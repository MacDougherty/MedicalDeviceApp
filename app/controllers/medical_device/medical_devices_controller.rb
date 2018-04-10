module MedicalDevice
  class MedicalDevicesController < ApplicationController
    before_action :set_medical_device, only: [:show, :edit, :update, :destroy]

    # GET /alert/leds
    def index
      @medical_devices = ::MedicalDevice::MedicalDevice.all
    end

    # GET /alert/leds/1
    def show
    end

    # GET /alert/leds/new
    def new
      redirect_to medical_devices_url, notice: 'You are not authorized to do that.'
    end

    # GET /alert/leds/1/edit
    def edit
    end

    # POST /alert/leds
    def create
      @medical_device = ::MedicalDevice::MedicalDevice.new(medical_device_params)

      if @medical_device.save
        redirect_to medical_device_path(@medical_device), notice: 'MedicalDevice was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /alert/leds/1
    def update
      if @medical_device.update(medical_device_params)
        redirect_to medical_device_path(@medical_device), notice: 'MedicalDevice was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /alert/leds/1
    def destroy
      @medical_device.destroy
      redirect_to medical_devices_url, notice: 'medical_device was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_medical_device
        @medical_device = ::MedicalDevice::MedicalDevice.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def medical_device_params
        params.fetch(:medical_device_medical_device, {}).permit(:id, :apiotics_instance, :buzzer_attributes => ["buzzer", "port_number", "id"], :heart_rate_sensor_attributes => ["data", "port_number", "id"], :galvanic_skin_response_sensor_attributes => ["data", "port_number", "id"], :four_digit_display_attributes => ["clock", "display", "port_number", "id"])
      end
  end
end