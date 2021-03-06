class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permited_params, if: :devise_controller?
 

  rescue_from CanCan::AccessDenied do |exception|
  	flash[:warning] = exception.message
  	redirect_to root_path
  end

  def rank
    @users = User.all
    
  end

  protected

  	def configure_permited_params
  		devise_parameter_sanitizer.permit(:sign_up) do |user_params|
  			user_params.permit({roles: []}, :fullname, :email,:password, :current_password, :password_confirmed , :estilo_um, :estilo_dois, :estilo_tres, :estilo_quatro, :estilo_cinco, :trofeu_um, :trofeu_dois, :trofeu_tres, :trofeu_quatro, :trofeu_cinco)
  		end
  		devise_parameter_sanitizer.permit(:account_update) do |user_params|
  			user_params.permit(:fullname, :email,:password, :current_password, :password_confirmed, :estilo_um, :estilo_dois, :estilo_tres, :estilo_quatro, :estilo_cinco, :trofeu_um, :trofeu_dois, :trofeu_tres, :trofeu_quatro, :trofeu_cinco )
  		end
  	end

  	def authorize
  		unless User.find_by_id(session[:user_id])
  		end
  	end

end
