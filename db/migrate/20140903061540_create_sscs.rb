class CreateSscs < ActiveRecord::Migration
  def change
    create_table :sscs do |t|
      t.references :student, index: true
      t.string :board
      t.string :school_name
      t.integer :year
      t.integer :marks
      t.float :perc

      t.timestamps
    end
  end
end
