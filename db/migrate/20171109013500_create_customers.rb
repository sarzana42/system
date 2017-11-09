class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :kubun
      t.string :groupcus
      t.string :maildm
      t.string :name1
      t.string :name2
      t.string :kana1
      t.string :kana2
      t.string :zip
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :tel1
      t.string :tel2
      t.string :fax
      t.string :email
      t.string :lineid
      t.string :skypeid
      t.string :danjo
      t.string :birth
      t.string :piccus
      t.string :remark

      t.timestamps
      
      t.index :email, unique: true
      
    end
  end
end
