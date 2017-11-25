class CreateCustomermaildms < ActiveRecord::Migration[5.0]
  def change
    create_table :customermaildms do |t|
      t.references :customer, foreign_key: true
      t.references :maildm, foreign_key: true

      t.timestamps
    end
  end
end
