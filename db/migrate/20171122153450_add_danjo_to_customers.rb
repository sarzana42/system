class AddDanjoToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :danjo, :integer
  end
end
