class RemoveColumnFirstNameFromDoctor < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :first_name, :string
    remove_column :doctors, :last_name, :string
  end
end
