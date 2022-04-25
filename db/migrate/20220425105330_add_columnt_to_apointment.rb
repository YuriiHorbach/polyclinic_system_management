class AddColumntToApointment < ActiveRecord::Migration[6.1]
  def change
    add_column :apointments, :apointment_date, :datetime
  end
end
