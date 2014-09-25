class Subscribe < ActiveRecord::Base
  enum category: [:job, :video]

  belongs_to :user
  has_many :subscribe_histories
  has_many :subscribe_calculates

end