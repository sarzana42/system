class RemoveDanjoToCustomer < ActiveRecord::Migration[5.0]
  def change
    remove_column :customers, :danjo, :string
  end
end
