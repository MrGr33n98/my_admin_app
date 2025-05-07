# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      # add your Next origin here
      origins %w[ http://localhost:3000 http://localhost:3001 ]
      resource '*',
        headers: :any,
        expose: %w[access-token expiry token-type uid client],
        methods: %i[get post put patch delete options head]
    end
  end
  