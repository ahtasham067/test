class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.float :total_price
      t.references :order
      t.references :pizza_price
      t.references :ingredient
      t.timestamps
    end
  end
end
