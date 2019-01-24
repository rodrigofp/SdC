class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :get_options, if: :devise_controller?
    before_action :check_admin, :only => [:new], if: :devise_controller?

    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :nome, :cpf, :current_password])
    devise_parameter_sanitizer.permit(:invite, keys: [:email, :tipo_usuario_id, :cliente_id, :invitation_limit])
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:nome, :cpf, :password, :password_confirmation])
  end

  def get_options
    @clientes_all = Cliente.all
    @tipo_usuarios_all = TipoUsuario.all
    @invitation_limits_all = {"Sim" => nil, "Não" => 0}
  end

  #CHECK IF USER TYPE IS ADMIN TO ALLOW INVITATIONS
  def check_admin
    puts "ESSE CARA TEM #{current_user.invitation_limit} SOBRANDO."
    unless current_user == nil || current_user.invitation_limit == nil
      redirect_to root_path, alert: "Você não tem permissão para concluir esta ação!"
    end
  end
end
