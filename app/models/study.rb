class Study < ActiveRecord::Base
  belongs_to :user
  has_many :records
  has_many :participants

  scope :owned_by, ->(user) { where user_id: user.id }
end
