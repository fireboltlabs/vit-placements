class CreateInterOrDiplomos < ActiveRecord::Migration
  def change
    create_table :inter_or_diplomos do |t|
      t.references :student, index: true
      t.string :board
      t.string :clz_name
      t.integer :year
      t.integer :marks
      t.float :perc

      t.timestamps
    end
  end
end
