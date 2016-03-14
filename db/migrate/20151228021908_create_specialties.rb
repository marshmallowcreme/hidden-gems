class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.string :name
      t.string :slug

      t.timestamps null: false
    end
    add_index :specialties, :slug, unique: true
  end
end
