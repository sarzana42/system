class CreateCustompatterns < ActiveRecord::Migration[5.0]
  def change
    create_table :custompatterns do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
