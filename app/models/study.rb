require 'csv'

class Study < ActiveRecord::Base
  belongs_to :user
  has_many :records
  has_many :participants

  scope :owned_by, ->(user) { where user_id: user.id }

  def to_csv
    CSV.generate do |csv|
      csv << ['Time', 'Participant ID', 'Who are you with?', 'What are you doing?', 'Pleasure Rating', 'Purpose Rating']
      self.records.each do |record|
        row = []
        record.responses.each do |response|
          row << response.created_at
          row << response.participant_id
          row << response.who
          row << response.what
          row << response.pleasure
          row << response.purpose
        end
        csv << row
      end
    end
  end
end
