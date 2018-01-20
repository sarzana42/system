class CreateMarkorders < ActiveRecord::Migration[5.0]
  def change
    create_table :markorders do |t|
      t.references :custompattern, foreign_key: true
      t.references :markpoint, foreign_key: true
      t.references :markmethod, foreign_key: true
      t.string :markcolor
      t.references :outsourcing, foreign_key: true

      t.timestamps
    end
  end
end
