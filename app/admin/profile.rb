ActiveAdmin.register Profile do
  permit_params :user_id, :name, :headline, :bio, :address_one, :address_two, :city, :state, :postal, :email, :phone, :group, :website

  index do
    selectable_column
    id_column
    column :user_id
    column :name
    column :city
    column :state
    column :phone
    column :group
    actions
  end

  filter :city
  filter :state
  filter :name
  filter :state
  filter :postal
  filter :email
  filter :group

  form do |f|
    f.inputs "New Profile" do
      f.input :user_id, :label => 'User', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}
      f.input :name
      f.input :email
      f.input :phone
      f.input :website
      f.input :group
      f.input :address_one
      f.input :address_two
      f.input :city
      f.input :state
      f.input :postal
      f.input :headline
      f.input :bio, :as => :text
    end
    f.actions
  end

end
