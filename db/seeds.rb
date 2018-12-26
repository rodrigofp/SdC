# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Criando prioridades..."
Prioridade.create([
    {nome: "Baixa"}, 
    {nome: "Média"}, 
    {nome: "Alta"}])
puts "Criando prioridades...[OK]"


puts "Criando tipos de chamado..."
TipoChamado.create([
    {tipo: "Erro"}, 
    {tipo: "Inconsistência"}, 
    {tipo: "Melhoria"}, 
    {tipo: "Nova Funcionalidade"}])
puts "Criando tipos de chamado...[OK]"

puts "Criando tipos de contatos..."
TipoContato.create([
    {tipo: "Telefone"}, 
    {tipo: "Celular"}, 
    {tipo: "E-mail"}])
puts "Criando tipos de contatos...[OK]"

puts "Criando clientes..."
Cliente.create([
    {nome: "ATSD"}, 
    {nome: "ADCCTA"}, 
    {nome: "APVE"}, 
    {nome: "ASSEM"}, 
    {nome: "SEGVAP"}, 
    {nome: "CPI"}])
puts "Criando clientes...[OK]"

puts "Criando tipos de usuários..."
TipoUsuario.create([
    {tipo: "Diretor"}, 
    {tipo: "Desenvolvedor"}, 
    {tipo: "Qualidade"}, 
    {tipo: "Atendimento"}, 
    {tipo: "Cliente"}])
puts "Criando tipos de usuários...[OK]"

puts "Criando bases..."
Base.create([
    {nome: "Desenvolvimento"}, 
    {nome: "Teste"}, 
    {nome: "Produção"}])
puts "Criando bases...[OK]"

puts "Criando modulos..."
Modulo.create([
    {nome: "RH"}, 
    {nome: "Financeiro"}, 
    {nome: "Benefícios"}, 
    {nome: "Marketing"}, 
    {nome: "Esportes"}])
puts "Criando modulos...[OK]"

puts "Criando status..."
Status.create([
    {nome: "Aberto"},
    {nome: "Em desenvolvimento"},
    {nome: "Aguardando teste"},
    {nome: "Em teste"},
    {nome: "Retornou"},
    {nome: "Aguardando atualização"},
    {nome: "Aguardando validação"},
    {nome: "Aguardando autorização"},
    {nome: "Atualizado"},
    {nome: "Finalizado"},
])
puts "Criando status...[OK]"
