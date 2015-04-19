class ParticipantMailer < ActionMailer::Base
  default from: "admin@test.com"

  def intro_email(participant)
    @participant = participant
    mail(to: @participant.email, subject: 'Invitation to participate in wellbeing study')
  end
end
