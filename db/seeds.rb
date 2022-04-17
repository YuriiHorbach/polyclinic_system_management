require 'faker'
10.times do 
  Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

10.times do
  doctor = Doctor.all.sample
  patient = Patient.all.sample
  Apointment.create(doctor: doctor,
                    patient: patient)
end