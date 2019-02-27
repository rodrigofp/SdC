namespace :dev_pop do
  desc "Popula banco de dados :3"
  task seed: :environment do
    puts "Criando clientes..."
    5.times do |i|
      Cliente.create!([
        {
          nome: Faker::Pokemon.name,
        }
      ])
    end
    puts "Criando clientes...[OK]"
    puts "Criando modulos..."
    10.times do |i|
      Modulo.create!([
        {
          nome: Faker::Space.planet,
        }
      ])
    end
    puts "Criando modulos...[OK]"
    puts "Criando usuarios..."
    25.times do |i|
      User.create!([
        {
          cliente: Cliente.all.sample,
          nome: Faker::LeagueOfLegends.champion,
          email: Faker::Internet.free_email,
          password: "123456",
          password_confirmation: "123456",
          tipo_usuario: TipoUsuario.all.sample,
          invitation_limit: nil,
          cpf: CPF.generate(true)
        }
      ])
    end
    puts "Criando usuarios...[OK]"
    puts "Criando chamados..."
    30.times do |i|
      Chamado.create!([
        {
          user: User.all.sample,
          tipo_chamado: TipoChamado.all.sample,
          prioridade: Prioridade.all.sample,
          base: Base.all.sample,
          cliente: Cliente.all.sample,
          modulo: Modulo.all.sample,
          data_abertura: Faker::Date.backward(100),
          numerador: i
        }
      ])
    end
    puts "Criando chamados...[OK]"
    puts "Criando atendimentos..."
    Chamado.all.each do |chamado|
      AtendimentoChamado.create!([
        {
          user: chamado.user,
          status_id: 1,
          chamado: chamado,
          data: chamado.data_abertura,
          base: chamado.base,
          descricao: Faker::BojackHorseman.quote,
        }
      ])
      [1,2,3,4,5].sample.times do |i|
        AtendimentoChamado.create!([
          {
            user: User.all.sample,
            status: Status.all.sample,
            chamado: chamado,
            data: Faker::Date.between(chamado.data_abertura, Date.today),
            base: Base.all.sample,
            descricao: Faker::RickAndMorty.quote,
          }
        ])
      end
    end
    puts "Criando atendimentos...[OK]"
  end

end
