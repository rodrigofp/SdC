# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Prioridade.create([{nome: "Baixa"}, {nome: "Média"}, {nome: "Alta"}])
TipoChamado.create([{tipo: "Erro"}, {tipo: "Inconsistência"}, {tipo: "Melhoria"}, {tipo: "Nova Funcionalidade"}])
TipoContato.create([{tipo: "Telefone"}, {tipo: "Celular"}, {tipo: "E-mail"}])
Cliente.create([{nome: "ATSD"}, {nome: "ADCCTA"}, {nome: "APVE"}, {nome: "ASSEM"}, {nome: "SEGVAP"}, {nome: "CPI"}])
TipoUsuario.create([{tipo: "Diretor"}, {tipo: "Desenvolvedor"}, {tipo: "Qualidade"}, {tipo: "Atendimento"}, {tipo: "Cliente"}])
Base.create([{nome: "Desenvolvimento"}, {nome: "Teste"}, {nome: "Produção"}])
Modulo.create([{nome: "RH"}, {nome: "Financeiro"}, {nome: "Benefícios"}, {nome: "Marketing"}, {nome: "Esportes"}])