class UserMailer < ApplicationMailer
	default from: "kishore.batch35@gmail.com"

	def registration_mailer(post,user)
		@user = user
		@post = post
		mail(to: @user.email, subject: "Thanks for your post")
	end
end
