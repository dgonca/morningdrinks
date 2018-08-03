class ChangeDrinkAndOrderRelation < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :drink_id, :integer
    add_column :drinks, :order_id, :integer
  end
end
