class Doctor < ApplicationRecord
  has_many :apointments, dependent: :destroy
  has_many :patients, through: :apointments

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :patient, length: {maximum: 10}

  def full_name
    "#{first_name} #{last_name}"
  end

end
