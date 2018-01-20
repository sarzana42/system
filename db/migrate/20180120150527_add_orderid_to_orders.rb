class AddOrderidToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :orderid, :string
  end
end
