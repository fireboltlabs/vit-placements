class StudentMailer < ActionMailer::Base
  default from: "nareshkatta99@gmail.com"

  def welcome_mail(user)
    @user=user
    @url='http://www.google.com'
    mail(to: @user.email, subject:'Test Welcome Email')
  end
  def compose_mail(ids,subject,text)
  	emails=ids.split(";")
  	emails.each do |email|
  		send_mail(email,subject,text)
  	end
  end
  def send_mail(email,subject,text)
  	mail(to: email, subject: subject,text:text)
  end
end
