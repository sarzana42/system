class AddDetailsToOutsourcing < ActiveRecord::Migration[5.0]
  def change
    add_column :outsourcings, :furigana, :string
    add_column :outsourcings, :zip, :string
    add_reference :outsourcings, :prefecture, foreign_key: true
    add_column :outsourcings, :address1, :string
    add_column :outsourcings, :address2, :string
    add_column :outsourcings, :inchargename, :string
    add_column :outsourcings, :inchargephone, :string
    add_column :outsourcings, :inchargemail, :string
    add_column :outsourcings, :companyname, :string
    add_column :outsourcings, :tel, :string
    add_column :outsourcings, :fax, :string
  end
end
