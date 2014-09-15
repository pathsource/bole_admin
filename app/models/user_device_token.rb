class UserDeviceToken < ActiveRecord::Base
  belongs_to :user
  belongs_to :device_token

end
