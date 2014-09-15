ActiveAdmin.register LifeStyleRecord do
  actions :all, except: [:new, :update, :edit]

  filter :created_at
  filter :location
  filter :version

  index do
    column :id 
    column :version
    column :location
    column :results
    column :time
    column :money
    column :created_at
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
