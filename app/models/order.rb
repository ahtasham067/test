class Order < ApplicationRecord
    # our all orders are present in this table with different status like processing or complete
   
    # associations
    belongs_to :discount, className: "discount_promotion_code", foreign_key: "discount_id"
    belongs_to :promotion, className: "discount_promotion_code", foreign_key: "promotion_id"
    has_many :order_items


    # validations
    validates :order_number
    enum :order_status, { processing: 0, complete: 1 }
    validates :order_status, inclusion: { in: order_status.keys }
end
