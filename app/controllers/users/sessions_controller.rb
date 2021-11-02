# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  def current_user
    @current_user ||= session[:current_user_id] &&
    User.find_by_id(session[:current_user_id]
  end
  def create
    if user = User.authenticate(params[:username], params[:password])
      session[:current_user_id] = user.id
      redirect_to root_url
    end
  end
  def destroy
    session[:user_id] = nil
    flash[:notice] = "Has cerrado sesión"
    redirect_to root_url, :notice => "Has cerrado sesión correctamente"
  end  
end

