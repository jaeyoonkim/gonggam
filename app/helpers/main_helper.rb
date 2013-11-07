module MainHelper
	def sign_in(nick)
		cookies.permanent[:user] = nick
	end

	def current_user
		cookies[:user]
	end

	def signed_in?
		!current_user.nil? and !(current_user == "")
	end

	def sign_out
		cookies.delete(:user)
	end
end
