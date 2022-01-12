class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
  url = provider_feedback_url(@feedback, token: @feedback.token)
end
