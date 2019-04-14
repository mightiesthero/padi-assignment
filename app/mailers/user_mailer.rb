class UserMailer < ApplicationMailer
  def survey(recipients, survey, link)
    @link = link
    @survey = survey
    mail(to: recipients, subject: 'Survey Link')
  end
end
