class LifeStyleQuestion < ActiveRecord::Base
  belongs_to :assessment, class_name: 'LifeStyleAssessment'
  has_many :options, class_name: 'LifeStyleOption', dependent: :destroy
  accepts_nested_attributes_for :options, allow_destroy: true
end