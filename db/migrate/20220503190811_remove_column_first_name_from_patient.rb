class RemoveColumnFirstNameFromPatient < ActiveRecord::Migration[6.1]
  def change
    remove_column :patients, :first_name, :string
    remove_column :patients, :last_name, :string
  end
end
