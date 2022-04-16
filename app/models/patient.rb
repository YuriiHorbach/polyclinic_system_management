class Patient < ApplicationRecord
  has_many :apointments 
  has_many :doctors, through: :apointments

  validates :first_name, presence: true
  validates :last_name, presence: true
end
