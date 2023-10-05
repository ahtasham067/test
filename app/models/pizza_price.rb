class PizzaPrice < ApplicationRecord
    # we will save the price of pizza in this table

    # associations
    belongs_to :pizza_size
    belongs_to :pizza
    has_many   :order_items

    # validations
    validates :price, presence: true

end
