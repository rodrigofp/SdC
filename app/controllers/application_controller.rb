class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :get_options, if: :devise_controller?

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
end
