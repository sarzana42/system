class CreateMaildms < ActiveRecord::Migration[5.0]
  def change
    create_table :maildms do |t|
      t.string :name

      t.timestamps
    end
  end
end
