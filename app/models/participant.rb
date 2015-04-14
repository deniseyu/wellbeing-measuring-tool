class Participant < ActiveRecord::Base
  has_many :responses
end
