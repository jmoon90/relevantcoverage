class AddSubscriptionReferenceToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :subscription_id, :integer
    add_index :topics, :subscription_id
  end
end
