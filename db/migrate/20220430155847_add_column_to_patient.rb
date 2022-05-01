class AddColumnToPatient < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :_id, :integer
  end
end
