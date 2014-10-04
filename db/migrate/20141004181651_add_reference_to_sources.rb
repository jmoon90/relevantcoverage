class AddReferenceToSources < ActiveRecord::Migration
  def change
    add_column :sources, :topic_id, :integer, :null => false
    add_index :sources, :topic_id
  end
end
