class Patient < ApplicationRecord
  has_many :apointments, dependent: :destroy
  has_many :doctors, through: :apointments

  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
