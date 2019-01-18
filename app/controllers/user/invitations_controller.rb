class Users::InvitationsController < Devise::InvitationsController
    before_action :get_options, :only => [:new]

    def new
        puts "OLA CONTROLLER"
        get_options
        super
    end

    protected

    def get_options
        @clientes_all = Cliente.all
        @tipo_usuarios_all = TipoUsuario.all
    end
end