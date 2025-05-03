class Plan < ApplicationRecord
    belongs_to :product
  
    enum currency: { brl: 0, usd: 1 }
    enum billing_type: { recurring: 0, one_time: 1 }
    enum payment_method: { credit_card: 0, pix: 1 }
    enum status: { active: 0, inactive: 1 }
  
    def self.ransackable_attributes(auth_object = nil)
      %w[
        id name price description status currency billing_type
        payment_method created_at updated_at billing_frequency
        billing_cycle product_id
      ]
    end
  
    def self.ransackable_associations(auth_object = nil)
      %w[product]
    end
  end
  