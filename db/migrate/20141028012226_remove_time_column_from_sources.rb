class RemoveTimeColumnFromSources < ActiveRecord::Migration
  def change
    remove_column :sources, :time, :string
  end
end
