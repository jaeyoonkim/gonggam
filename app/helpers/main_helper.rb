module MainHelper
	def sign_in(nick)
		cookies.permanent[:user] = nick
	end

	def current_user
		cookies[:user]
	end

	def signed_in?
		not cookies[:user].nil? and not cookies[:user] ==""
	end

	def sign_out
		cookies.delete(:user)
	end
end
