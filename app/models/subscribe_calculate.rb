class SubscribeCalculate < ActiveRecord::Base
  belongs_to :subscribe

  has_many :subscribe_histories

end
