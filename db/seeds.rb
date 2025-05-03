# Cria admin apenas no ambiente de desenvolvimento
if Rails.env.development?
    AdminUser.find_or_create_by!(email: 'admin@example.com') do |admin|
      admin.password = 'password'
      admin.password_confirmation = 'password'
    end
  end
  
  # Garante que não haja dados duplicados
  Review.destroy_all
  Company.destroy_all
  
  puts "🔄 Limpando e populando Company e Review..."
  
  3.times do |i|
    company = Company.create!(
      name: "Empresa #{i + 1}",
      description: "Descrição da Empresa #{i + 1}"
    )
  
    10.times do |j|
      Review.create!(
        company: company,
        content: "Review #{j + 1} para #{company.name}",
        rating: rand(1..5),
        date: Date.today - rand(1..30).days,
        status: Review.statuses.keys.sample
      )
    end
  end
  
  puts "✅ Seed finalizado com sucesso!"
  