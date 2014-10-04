class Coverages < ActiveRecord::Migration
  def change
    create_table :coverages do |t|
      t.references :source
      t.references :topic

      t.timestamps
    end
    add_index :coverages, :source_id
    add_index :coverages, :topic_id
  end
end
