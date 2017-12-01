class RemovePiccusToCustomers < ActiveRecord::Migration[5.0]
  def change
    remove_column :customers, :piccus, :string
  end
end
