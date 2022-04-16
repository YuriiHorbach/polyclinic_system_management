class Doctor < ApplicationRecord
  has_many :apointments 
  has_many :patients, through: :apointments

  validates :first_name, presence: true
  validates :last_name, presence: true

end
