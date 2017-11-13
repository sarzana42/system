class AddRemarkToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :remark, :text
  end
end
