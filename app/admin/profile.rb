ActiveAdmin.register Profile do
  actions :all, except: [:new, :update, :edit]

  filter :city
  filter :age
  filter :degree
  filter :major
  filter :occupation

  index do
    column :id 
    column :name
    column :city
    column :age
    column :degree
    column :major
    column :industry
    column :occupation
    column :skills
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
