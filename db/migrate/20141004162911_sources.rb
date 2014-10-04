class Sources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :title, :null => false
      t.string :link, :null => false
      t.string :time, :null => false
      t.string :date, :null => false
      t.string :publisher, :null => false
      t.string :image

      t.timestamps
    end
  end
end
