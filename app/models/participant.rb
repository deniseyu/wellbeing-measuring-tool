require 'valid_email'

class Participant < ActiveRecord::Base
  has_many :responses
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates :email, :presence => true, :email => true
  validates_presence_of :phone
end
