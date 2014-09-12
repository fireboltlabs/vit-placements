class AddFourOne < ActiveRecord::Migration
  def change
    add_column :bteches, :four_one_marks, :integer
    add_column :bteches, :four_one_perc, :integer
    add_column :bteches, :four_one_backlogs, :integer
    add_column :bteches, :four_two_marks, :integer
    add_column :bteches, :four_two_perc, :integer
    add_column :bteches, :four_two_backlogs, :integer
  end
end
