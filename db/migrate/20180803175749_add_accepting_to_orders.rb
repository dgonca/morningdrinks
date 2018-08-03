class AddAcceptingToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :accept, :boolean
  end
end
