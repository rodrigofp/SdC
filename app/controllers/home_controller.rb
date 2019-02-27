class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @clientes_all = Cliente.all
    @tipo_chamados_all = TipoChamado.all
  end

  def calcula_total_chamados_abertos(cliente, tipo_chamado)
    chs = cliente.chamados.where(:tipo_chamado => tipo_chamado)
    i = 0
    chs.each do |chamado|
      if chamado.atendimento_chamados.last.status_id == 1
        i += 1
      end
    end
    i
  end
  helper_method :calcula_total_chamados_abertos

  def classe_para_dashboard(cliente, tipo_chamado, onde)
    qtd = calcula_total_chamados_abertos(cliente, tipo_chamado)
    case qtd
    when 0
      onde == "circulo" ? "btn-grad bg-grad" : "text-grad"
    when 1..2
      onde == "circulo" ? "btn-ok bg-ok" : "text-ok"
    when 3..4
      onde == "circulo" ? "btn-aviso bg-aviso" : "text-aviso"
    else
      onde == "circulo" ? "btn-excluir bg-excluir" : "text-excluir"
    end
  end
  helper_method :classe_para_dashboard

end
