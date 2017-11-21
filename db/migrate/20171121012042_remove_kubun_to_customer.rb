class RemoveKubunToCustomer < ActiveRecord::Migration[5.0]
  def change
    remove_column :customers, :kubun, :string
  end
end
