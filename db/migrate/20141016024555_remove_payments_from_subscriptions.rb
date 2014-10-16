class RemovePaymentsFromSubscriptions < ActiveRecord::Migration
  def change
    remove_column :subscriptions, :payment_id, :integer
  end
end
