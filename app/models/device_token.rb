class DeviceToken < ActiveRecord::Base
  has_many :user_device_tokens
end