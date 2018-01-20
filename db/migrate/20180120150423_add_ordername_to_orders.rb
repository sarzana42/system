class AddOrdernameToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :ordername, :string
  end
end
