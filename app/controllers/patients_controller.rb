class PatientsController < ApplicationController
  def index 
    @patients = Patient.all 
  end

  def show 
    @patient = Patient.find(params[:id])
    # render json: @patient, include: [:doctors]
  end

  def new 
    @patient = Patient.new 
    @doctors = Doctor.all
  end

  def create 
    @patient = Patient.create(patient_params)
    redirect_to patients_path @patient
  end

  def edit 
    @patient = Patient.find(params[:id])
  end
  
  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      flash[:notice] = "Updated"
      redirect_to patient_path
    else
      render :edit
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    redirect_to patients_path
  end

  private

  def patient_params 
    params.require(:patient).permit(:first_name, :last_name, :full_name, :speciality, doctor_ids:[])
  end
end
