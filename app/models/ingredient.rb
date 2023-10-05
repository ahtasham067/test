class Ingredient < ApplicationRecord
    # we place all extra ingredients in this model like name is mayo and price is 50
    
    # associations
    has_many :order_items

    # validations
    validates :name, :price, presence: true
end
