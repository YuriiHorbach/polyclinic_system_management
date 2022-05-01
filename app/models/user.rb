class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :doctor, class_name: "Doctor"
  has_one :patient, class_name: "Patient"

  ROLES = %i[admin author]

  enum role: {patient:0, doctor:1, admin:2}

  # def roles=(roles)
  #   roles = [*roles].map { |r| r.to_sym }
  #   self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  # end

  # def roles
  #   ROLES.reject do |r|
  #     ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
  #   end
  # end

  # def has_role?(role)
  #   roles.include?(role)
  # end


  # def admin?
  #   user_type == 'admin'
  # end

end
