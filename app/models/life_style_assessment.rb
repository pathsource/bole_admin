class LifeStyleAssessment < ActiveRecord::Base
  has_many :questions, class_name: 'LifeStyleQuestion', dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true
end