class DoctorController < ApplicationController
  
  def index 
    @doctors = Doctor.all 
  end

  def show 
    @doctor = Doctor.find(params[:id])
  end

  def new 
    @doctor = Doctor.new 
  end

  def create 
    @doctor = Doctor.create(doctor_params)
    redirect_to doctor_path @doctor
  end

  def edit 
    @doctor = Doctor.find(params[:id])
  end
  
  def update
    @doctor = Doctor.find(params[:id])
    @doctor = Doctor.update(doctor_params)
  end

  private

  def doctor_params 
    params.require(:doctor).permit(:first_name, :last_name, :speciality, :full_name)
  end
end
