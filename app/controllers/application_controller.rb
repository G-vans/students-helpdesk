class ApplicationController < ActionController::Base
    include ActionController::RequestForgeryProtection
  include Devise::Controllers::Helpers
  include DeviseTokenAuth::Concerns::SetUserByToken

  protect_from_forgery with: :null_session
  #before_action :authenticate_user!

  # def after_sign_in_path_for(resource)
  #   solutions_path # or any other path that you want to redirect to
  # end
  
end
