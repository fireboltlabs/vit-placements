class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :regd_no
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :father_name
      t.string :email
      t.integer :mobile
      t.integer :father_mobile
      t.boolean :placement
      t.boolean :jkc
      t.boolean :civils
      t.boolean :further_studies
      t.timestamps
    end
  end
end
