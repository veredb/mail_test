class UserMailer < ActionMailer::Base
  default from: "from@example.com"


def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    attachments['photo-4.JPG'] = File.read('app/assets/images/photo-4.JPG')
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
end

end
