class CreateBteches < ActiveRecord::Migration
  def change
    create_table :bteches do |t|
      t.references :student, index: true
      t.integer :one_one_marks
      t.float :one_one_perc
      t.integer :one_one_backlogs
      t.integer :one_two_marks
      t.float :one_two_perc
      t.integer :one_two_backlogs
      t.integer :two_one_marks
      t.float :two_one_perc
      t.integer :two_one_backlogs
      t.integer :two_two_marks
      t.float :two_two_perc
      t.integer :two_two_backlogs
      t.integer :three_one_marks
      t.float :three_one_perc
      t.integer :three_one_backlogs
      t.integer :three_two_marks
      t.float :three_two_perc
      t.integer :three_two_backlogs
      t.float :total_perc
      t.integer :active_backlogs
      t.integer :backlogs_history

      t.timestamps
    end
  end
end
