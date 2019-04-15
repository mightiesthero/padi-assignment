class UserMailer < ApplicationMailer
  def survey(recipients, survey_site, link)
    # TODO: set smtp
    @link = link
    @survey_site = survey_site
    mail(to: recipients, subject: 'Survey Link')
  end
end
