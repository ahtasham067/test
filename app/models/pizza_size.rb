class PizzaSize < ApplicationRecord
    # we only use this table for sizes like small, x_small etc

    # associations
    has_many :pizza_price

    # validations
    validates :pizza_size, uniqueness: true
end
