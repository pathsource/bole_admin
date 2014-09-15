ActiveAdmin.register Subscribe do
  actions :all, except: [:new, :update, :edit]

  filter :category
  filter :interval
  filter :next_send_at
  filter :receive_message
  filter :receive_mail

  index do
    column :id 
    column :category
    column :interval
    column :receive_message
    column :receive_mail
    column :next_send_at
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
