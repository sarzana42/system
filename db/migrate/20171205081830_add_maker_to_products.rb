class AddMakerToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :maker, foreign_key: true
  end
end
