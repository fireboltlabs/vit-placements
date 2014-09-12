class Addbranch < ActiveRecord::Migration
  def change
    add_column :bteches, :branch, :string
  end
end
