class LifeStyleOption < ActiveRecord::Base
  belongs_to :question, class_name: 'LifeStyleQuestion'
end