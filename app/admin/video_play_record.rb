ActiveAdmin.register VideoPlayRecord do
  actions :all, except: :new

  filter :play_times

  index do
    column :id 
    column :video_id
    column :play_length
    column :length
    column :play_times
    column :created_at
    column :updated_at
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
