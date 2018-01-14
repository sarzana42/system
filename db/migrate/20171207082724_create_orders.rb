class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :customer, foreign_key: true
      t.date :firstorderdate
      t.date :startdate
      t.date :finishdate
      t.references :deliverymethod, foreign_key: true
      t.references :collectionmethod, foreign_key: true
      t.date :collectiondate
      t.date :deliverydate

      t.timestamps
    end
  end
end
