class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  has_many :life_style_records
  has_many :video_comments
  has_many :video_play_records
  has_one  :profile
  has_many :user_device_tokens
  has_many :device_tokens, through: :user_device_tokens
  has_many :subscribes
  has_many :in_app_purchases

  # delegate :name, to: :profile

end
