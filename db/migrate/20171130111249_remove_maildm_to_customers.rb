class RemoveMaildmToCustomers < ActiveRecord::Migration[5.0]
  def change
    remove_column :customers, :maildm, :string
  end
end
