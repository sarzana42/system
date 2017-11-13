class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :productid
      t.string :name
      t.string :productpic
      t.string :productinfo
      t.string :maker

      t.timestamps
    end
  end
end
