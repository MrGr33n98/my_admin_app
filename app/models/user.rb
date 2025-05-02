class User < ApplicationRecord
    # (Validações e associações, se houver...)
  
    def self.ransackable_attributes(auth_object = nil)
      %w[
        id name email primary_phone secondary_phone
        company_name admin email_confirmed created_at updated_at
      ]
    end
  end
  