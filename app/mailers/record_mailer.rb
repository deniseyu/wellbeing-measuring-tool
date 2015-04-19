class RecordMailer < ActionMailer::Base
  default from: "admin@test.com"

  def response_email(study, participant)
    @study = study
    @participant = participant
    mail(to: @participant.email, subject: 'Survey response requested')
  end
end
