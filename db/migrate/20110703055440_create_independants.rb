class CreateIndependants < ActiveRecord::Migration
  def change
    create_table :independants do |t|
      t.string :first_name
      t.string :last_name
      t.string :website_url
      t.string :phone
      t.string :image
      t.text :bio
      t.string :email
      t.string :address_1
      t.string :address_2
      t.string :zip
      t.string :city

      t.timestamps
    end
  end
end
