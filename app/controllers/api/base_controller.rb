# app/controllers/api/base_controller.rb
module Api
    class BaseController < ActionController::API
      # Para permitir http_basic_authenticate_with em ActionController::API
      include ActionController::HttpAuthentication::Basic::ControllerMethods
  
      http_basic_authenticate_with \
        name:     Rails.application.credentials.dig(:api, :basic_auth, :username),
        password: Rails.application.credentials.dig(:api, :basic_auth, :password)
    end
  end
  