class CreateContacthistories < ActiveRecord::Migration[5.0]
  def change
    create_table :contacthistories do |t|
      t.references :order, foreign_key: true
      t.string :name
      t.string :kubun
      t.text :contactus
      t.text :answer
      t.string :resolutionstate
      t.text :remark
      t.string :tile

      t.timestamps
    end
  end
end
