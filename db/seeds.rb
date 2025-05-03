# Cria admin apenas no ambiente de desenvolvimento
if Rails.env.development?
    AdminUser.find_or_create_by!(email: 'admin@example.com') do |admin|
      admin.password = 'password'
      admin.password_confirmation = 'password'
    end
  end
  
  puts "🧹 Limpando dados antigos..."
  Review.destroy_all
  Company.destroy_all
  Product.destroy_all
  Plan.destroy_all
  
  puts "🔄 Criando empresas e reviews..."
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
  
  puts "📦 Criando produto base para planos..."
  product = Product.create!(name: "Produto Base", description: "Produto de teste para associação aos planos", status: "active")
  
  puts "📋 Criando planos SaaS com escopos diversos..."
  %w[Starter Growth Profissional Clientes Advanced Prospecção Reputation Gratuito].each do |plan_name|
    Plan.create!(
      name: plan_name,
      price: plan_name == "Gratuito" ? 0 : rand(49..299),
      description: "Plano #{plan_name} com acesso aos principais recursos.",
      status: "active",
      currency: "brl",
      billing_type: "recurring",
      payment_method: "credit_card",
      billing_frequency: "anual",
      billing_cycle: "mensal",
      product: product
    )
  end
  
  puts "✅ Seed finalizado com sucesso!"
  