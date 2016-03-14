class CreateSpecializations < ActiveRecord::Migration
  def change
    create_table :specializations do |t|
      t.references :profile, index: true, foreign_key: true
      t.references :specialty, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
