class AddCaseSensitiveToCard < ActiveRecord::Migration
  def change
    add_column :cards, :case_sensitive, :boolean
  end
end
