class RemoveColumnFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :roles_mask, :integer
  end
end
