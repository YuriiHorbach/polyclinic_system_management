class AddColumnsToApointment < ActiveRecord::Migration[6.1]
  def change
    add_column :apointments, :doctor_id, :integer
    add_column :apointments, :patient_id, :integer
  end
end
