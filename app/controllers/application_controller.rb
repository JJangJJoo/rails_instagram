class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  # def current_user
  #   @user ||= User.find(session[:user_id]) if User.exists? && session[:user_id]
  # end
  #
  # helper_method :current_user
  #
  # def authorize
  #   unless current_user
  #     flash[:notice] = "로그인이 필요한 서비스입니다."
  #     redirect_to '/login'
  #   end
  # end
end
