ActiveAdmin.register VideoComment do
  actions :all, except: [:new, :update, :edit]

  filter :created_at
  filter :content

  index do
    column :id
    column :video_id
    column :content
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
