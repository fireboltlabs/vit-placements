ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "nareshkatta99@gmail.com",
  :password             => "nareshsravani551",
  :authentication       => "plain",
  :enable_starttls_auto => true
}