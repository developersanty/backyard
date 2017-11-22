class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email]).try(:authenticate, params[:password])

    if user
      session[:user_id] = user.id
      render json: user, status: 200
    else
      render json: nil, status: 403
    end
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end