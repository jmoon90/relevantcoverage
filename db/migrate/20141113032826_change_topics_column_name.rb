class ChangeTopicsColumnName < ActiveRecord::Migration
  def change
    remove_column :topics, :name, :string
    add_column :topics, :title, :string
  end
end
