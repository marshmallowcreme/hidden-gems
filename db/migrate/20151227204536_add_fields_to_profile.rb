class AddFieldsToProfile < ActiveRecord::Migration
  def change
  	add_column :profiles, :group, :string
  	add_column :profiles, :website, :string
  end
end
