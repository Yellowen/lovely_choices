class SubscribeMailer < ApplicationMailer
  default from: 'notifications@lovelychoices.com'

  def welcome_email(email, hash)
    @url = hash
    mail(to: email,

         subject: 'welcome to lovelychoices site')
  end
end
