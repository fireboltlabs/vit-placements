class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :user_name
      t.string :title
      t.text :post
      t.timestamps
    end
  end
end
