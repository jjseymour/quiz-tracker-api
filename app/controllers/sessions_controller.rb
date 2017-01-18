class SessionsController < ApplicationController
  before_action :session_params, only: :create

  def create
    user = User.find_by(email: session_params[:email])
    if user && user.authenticate(session_params[:password])
      jwt = Auth.issue({user: user.id})
      render json: {jwt: jwt}
    else
      render json: {:errors=>
       [{:detail=>"incorrect email or password",
         :source=>{:pointer=>"user/err_type"}}
       ]}, status: 404
    end
  end

  def destroy
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
