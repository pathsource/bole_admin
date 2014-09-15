ActiveAdmin.register SubscribeHistory do
  actions :all, except: [:new, :update, :edit]

  filter :items
  filter :sent_at
  filter :mailed_at
  filter :read_at

  index do
    column :id 
    column :subscribe_id
    column :items
    column :result_count
    column :sent_at
    column :mailed_at
    column :read_at
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
