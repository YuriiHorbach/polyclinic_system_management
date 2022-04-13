class CreateApointments < ActiveRecord::Migration[6.1]
  def change
    create_table :apointments do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.datetime :apointment_date

      t.timestamps
    end
  end
end
