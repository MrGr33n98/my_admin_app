class Lead < ApplicationRecord
  belongs_to :company

  enum porte_empresa: { pequeno: 0, medio: 1, grande: 2 }
  enum status: { novo: 0, em_progresso: 1, convertido: 2 }

  def self.ransackable_attributes(auth_object = nil)
    %w[
      id
      lead_type
      client_name
      client_email
      client_phone
      company_id
      date
      value
      created_at
      updated_at
      status
      porte_empresa
    ]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[company]
  end
end
