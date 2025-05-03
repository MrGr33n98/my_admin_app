class Company < ApplicationRecord
  # ... seus outros métodos, associações, etc.

  def self.ransackable_attributes(auth_object = nil)
    %w[
      city
      contact_email
      contact_phone
      created_at
      description
      id
      location
      name
      price_range
      state
      updated_at
      website_url
    ]
  end
end
