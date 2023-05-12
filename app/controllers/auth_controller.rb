class AuthController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :authenticate_user!, only: [:logout]
  
    def login
      user = User.find_for_database_authentication(email: params[:email])
      if user && user.valid_password?(params[:password])
        render json: { message: 'Login successful', auth_token: user.generate_jwt }
      else
        render json: { message: 'Invalid email or password' }, status: :unauthorized
      end
    end
  
    def logout
      current_user.tokens = {}
      current_user.save
      render json: { message: 'Logout successful' }
    end
  end
  