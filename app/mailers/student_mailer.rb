class StudentMailer < ActionMailer::Base
  default from: "me@example.com"

  def welcome_mail(user)
    @user=user
    @url='http://www.google.com'
    mail(to: @user.email, subject:'Test Welcome Email')
  end
end
