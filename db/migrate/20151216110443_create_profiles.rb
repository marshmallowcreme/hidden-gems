class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :headline
      t.text :bio
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.string :postal
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
