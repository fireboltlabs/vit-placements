class AddEamcet < ActiveRecord::Migration
  def up
    add_column :students, :emcet_rank, :integer
  end
end
