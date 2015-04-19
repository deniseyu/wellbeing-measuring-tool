class RecordMailer < ActionMailer::Base
  default from: "admin@test.com"

  def response_email(study, record, participant)
    @study = study
    @record = record
    @participant = participant
    mail(to: @participant.email, subject: 'Survey response requested')
  end
end
