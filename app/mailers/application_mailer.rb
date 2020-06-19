class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'		#問い合わせ内容がここのアドレスから送られてくる
  layout 'mailer'
end
