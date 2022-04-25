class CreateApointments < ActiveRecord::Migration[6.1]
  def change
    create_table :apointments do |t|

      t.timestamps
    end
  end
end
