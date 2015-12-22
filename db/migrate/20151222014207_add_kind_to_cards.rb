class AddKindToCards < ActiveRecord::Migration
  def change
    add_column :cards, :kind_id, :integer
    add_index :cards, :kind_id
  end
end
