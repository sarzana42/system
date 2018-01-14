class CreateCollectionmethods < ActiveRecord::Migration[5.0]
  def change
    create_table :collectionmethods do |t|
      t.string :name
      t.string :remark

      t.timestamps
    end
  end
end
