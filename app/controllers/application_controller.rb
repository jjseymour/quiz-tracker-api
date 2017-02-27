class ApplicationController < ActionController::API
  def decode_user
    Auth.decode(request.env["HTTP_AUTHORIZATION"])
  end

  def logged_in_user
    @user = User.find(Auth.decode(request.env["HTTP_AUTHORIZATION"])["user"])
  end
end
