class CreateDiscountPromotionCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :discount_promotion_codes do |t|
      t.string :name
      t.string "type", null: false
      t.timestamps
    end
  end
end
