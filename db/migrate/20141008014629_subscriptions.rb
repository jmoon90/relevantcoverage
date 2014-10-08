class Subscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :user
      t.references :payment
      t.references :topic

      t.timestamps
    end
    add_index :subscriptions, :user_id
    add_index :subscriptions, :topic_id
    add_index :subscriptions, :payment_id
  end
end
