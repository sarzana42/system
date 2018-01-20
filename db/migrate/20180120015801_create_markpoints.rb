class CreateMarkpoints < ActiveRecord::Migration[5.0]
  def change
    create_table :markpoints do |t|
      t.string :name

      t.timestamps
    end
  end
end
