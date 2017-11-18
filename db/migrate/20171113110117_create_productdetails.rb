class CreateProductdetails < ActiveRecord::Migration[5.0]
  def change
    create_table :productdetails do |t|
      t.references :product, foreign_key: true
      t.string :colorcode
      t.string :colorname
      t.string :sizecode
      t.string :sizename
      t.string :vprice
      t.string :wprice
      t.string :price
      t.string :stock

      t.timestamps
    end
  end
end
