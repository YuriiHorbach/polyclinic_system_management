class DoctorsController < ApplicationController
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
    if @doctor.update(doctor_params)
      flash[:notice] = "Updated"
      redirect_to doctors_path
    else
      render :edit
    end
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.destroy
    redirect_to doctors_path
  end

  private

  def doctor_params 
    params.require(:doctor).permit(:first_name, :full_name, :last_name, patient_ids: [])
  end
end
