class AddBirthToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :birth, :datetime
  end
end
