class ApplicationController < ActionController::API
         include DeviseTokenAuth::Concerns::SetUserByToken

        before_action :configure_permitted_parameters, if: :devise_controller?
	    respond_to :json

	protected
	
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name])

		 # devise_parameter_sanitizer.for(:account_update) do |user_params|
   #           user_params.permit(:username, :email,  :password, :password_confirmation)
   #       end
	end
end

