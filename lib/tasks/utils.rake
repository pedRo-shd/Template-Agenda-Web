namespace :utils do
  desc "TODO"
  task seed: :environment do
  
    puts "Gerando os contatos..."
        100.times do |i|
            Contact.create!(
                name: Faker::Name.name,
                email: Faker::Internet.email,
                kind: Kind.all.sample,
                rmk: LeroleroGenerator.sentence([1, 2, 3, 4, 5].sample)
            )
    end
    puts "Gerando os tipos de contatos...[OK]"

    puts "Gerando os tipos de endereço..."
      Contact.all.each do |_contact|
          Address.create!(
              streeg: Faker::Address.street_address,
              city: Faker::Address.city,
              state: Faker::Address.state_abbr,
              contact: _contact
            )
        end
    puts "Gerandos os tipos de endereço... [OK]"
    
    puts "Gerando os tipos de telefone..."
        Contact.all.each do |_contact|
            Phone.create!(
                phone: Faker::PhoneNumber.phone_number,
                contact: _contact
            )
        end 
    end
    puts "Gerando os tipos de telefone... [OK]"
  end

