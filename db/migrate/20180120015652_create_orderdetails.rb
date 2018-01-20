class CreateOrderdetails < ActiveRecord::Migration[5.0]
  def change
    create_table :orderdetails do |t|
      t.references :custompattern, foreign_key: true
      t.references :productdetail, foreign_key: true
      t.string :orderamount
      t.text :remark

      t.timestamps
    end
  end
end
