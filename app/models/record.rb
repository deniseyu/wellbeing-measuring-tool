class Record < ActiveRecord::Base
  belongs_to :study
  has_many :responses
end
