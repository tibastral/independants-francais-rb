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
      t.text :address

      t.timestamps
    end
  end
end
