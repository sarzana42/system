class AddCustompatternimageToCustompatterns < ActiveRecord::Migration[5.0]
  def change
    add_column :custompatterns, :custompatternimage, :string
  end
end
