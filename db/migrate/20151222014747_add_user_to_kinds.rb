class AddUserToKinds < ActiveRecord::Migration
  def change
    add_column :kinds, :user_id, :integer
    add_index :kinds, :user_id
  end
end
