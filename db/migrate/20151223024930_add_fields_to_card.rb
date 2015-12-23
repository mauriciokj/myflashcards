class AddFieldsToCard < ActiveRecord::Migration
  def change
    add_column :cards, :number_of_times_played, :integer, default: 0
    add_column :cards, :number_of_correct_answers, :integer, default: 0
    add_column :cards, :number_of_errors, :integer, default: 0
  end
end
