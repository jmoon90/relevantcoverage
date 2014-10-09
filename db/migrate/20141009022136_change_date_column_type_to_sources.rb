class ChangeDateColumnTypeToSources < ActiveRecord::Migration
  def change
    remove_column :sources, :date, :string
    add_column :sources, :published_date, :date
  end
end
