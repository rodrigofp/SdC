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

  def classe_para_cabecalho(cliente, tipo_chamado)
    qtd = calcula_total_chamados_abertos(cliente, tipo_chamado)
    case qtd
    when 0
      "bg-grad"
    when 1..2
      "bg-ok"
    when 3..4
      "bg-aviso"
    else
      "bg-excluir"
    end
  end
  helper_method :classe_para_cabecalho
end
