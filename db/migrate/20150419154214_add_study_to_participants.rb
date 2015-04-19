class AddStudyToParticipants < ActiveRecord::Migration
  def change
    add_reference :participants, :study, index: true
  end
end
