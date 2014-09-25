ActiveAdmin.register SubscribeHistory do
  actions :all, except: [:new, :update, :edit]

  filter :read_at

  index do
    column :id 
    column :subscribe_id
    column :read_at
    column :resource_id
    column :resource_type
    column :user_id
    column :subscribe_calculate_id
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
