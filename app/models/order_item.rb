class OrderItem < ApplicationRecord
    # we use all order_items in this table

    # associations
    belongs_to :order
    belongs_to :pizza_price
    belongs_to :ingredient

    # validations
    validates :total_price, presence: true
end
