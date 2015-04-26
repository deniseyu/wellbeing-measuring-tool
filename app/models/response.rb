class Response < ActiveRecord::Base
  belongs_to :participant
  belongs_to :record
end
