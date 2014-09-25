class SubscribeHistory < ActiveRecord::Base
  belongs_to :subscribe
  belongs_to :subscribe_calculate
end