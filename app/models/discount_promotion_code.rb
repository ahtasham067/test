class DiscountPromotionCode < ApplicationRecord
    # we will use this table for store type like discount or promotion

    #associations
    has_one :order
    
    # validations
    validates :name, presence: true
end
