class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :drink_id
      t.integer :user_id
      t.string :order_status

      t.timestamps
    end
  end
end
