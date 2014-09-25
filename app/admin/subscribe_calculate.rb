ActiveAdmin.register SubscribeCalculate do
  actions :all, except: [:new, :update, :edit]
  
  filter :sent_at
  filter :mailed_at
end