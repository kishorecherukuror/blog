class UserMailer < ApplicationMailer
	default from: "desainisarg10@gmaicurrenl.com"

	def registration_mailer(post,user)
		@user = user
		@post = post
		mail(to: @user.email, subject: "Thanks for your post")
	end
	def comment_mailer(post,comment)
		@post = post
		@post_user = User.find(Post.find(@post.id).user_id)
		mail(to: @post_user.email, subject: "Somebody commented on your post")
	end
end
