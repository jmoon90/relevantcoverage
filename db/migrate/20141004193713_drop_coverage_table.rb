class DropCoverageTable < ActiveRecord::Migration
  def change
    drop_table :coverages
  end
end
