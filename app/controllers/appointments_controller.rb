class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :destroy]


  def index
    @appointments = Appointment.all
  end

  def show

  end

  def new
    @appointment = Appointment.new
  end

  def create
    appointment = Appointment.find_or_create_by(appointment_params)
    redirect_to appointment_path(appointment)
  end

  def edit

  end

  def update
 
    @appointment.update(appointment_params)
    redirect_to appointment_path(@appointment)

  end
  
  def destroy
  @appointment.destroy
  # Appointment.destroy(params[:id]})
  redirect_to appointments_path
  end



    private
    def find_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:service, :employee_id, :client_id, :apt_time)
    end

end
