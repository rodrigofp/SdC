class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    get_options
  end

  def get_options
    @statuses_all = Status.all
    @clientes_all = Cliente.all
    @prioridades_all = Prioridade.all
    @tipo_chamados_all = TipoChamado.all
    @total_chamados = Chamado.all.count
  end

  def get_count_from_status(status)
    count = 0
    chamados = Chamado.all
    chamados.each do |chamado|
      atendimento = chamado.atendimento_chamados.last
      if atendimento.status == status
        count += 1
      end
    end
    count
  end
  helper_method :get_count_from_status
end
