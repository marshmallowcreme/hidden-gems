class AddProfilePhotoToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :profile_photo, :string
  end
end
