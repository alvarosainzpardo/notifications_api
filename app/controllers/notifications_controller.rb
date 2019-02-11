class NotificationsController < ApplicationController
  before_action :set_notification, only: [:show, :update, :destroy]

  # GET /notifications
  def index
    @notifications = Notification.all.order(:time_instant).reverse_order

    render json: @notifications
  end

  # GET /notifications/1
  def show
    render json: @notification
  end

  # POST /notifications
  def create
    @notification = Notification.new(notification_params)

    if @notification.save
      render json: @notification, status: :created, location: @notification
    else
      render json: @notification.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notifications/1
  def update
    if @notification.update(notification_params)
      render json: @notification
    else
      render json: @notification.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notifications/1
  def destroy
    @notification.destroy
  end

  # POST /append_notifications
  def append
    @notification = Notification.new()

    @notification.fiware_service = request.headers['Fiware-Service']
    @notification.fiware_servicepath = request.headers['Fiware-ServicePath']
    @notification.payload = request.body.read
    json_body = JSON.parse(request.body.read)

    if !json_body.empty?
      @notification.entity_type = json_body['contextResponses'][0]['contextElement']['type']
      @notification.entity_id = json_body['contextResponses'][0]['contextElement']['id']

      # loop over all attributes of the first contextElement of the notification
      # for each attribute there is a name, a value and a metadata (metadata not used here)
      json_body['contextResponses'][0]['contextElement']['attributes'].each.with_index do |attribute, index|
        if attribute['name'] == 'TimeInstant'
          @notification.time_instant = attribute['value']
        else
          # str_index = "%02d" % index
          # @notification["attribute_#{str_index}"] = "#{attribute['name']}: #{attribute['value']}"
          @notification["attribute_%02d" % index] = "#{attribute['name']}: #{attribute['value']}"
        end

        # Exit if there are more attributes in the payload than the number
        # of data instance variables in the model
        break if index == @notification.data_fields_number - 1
      end
    end

    if @notification.save
      render json: @notification, status: :created, location: @notification
    else
      render json: @notification.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notification
      @notification = Notification.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def notification_params
      params.require(:notification).permit(:payload)
    end
end
