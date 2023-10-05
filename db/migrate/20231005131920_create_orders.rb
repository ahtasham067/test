class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string  :order_number
      t.integer :order_status
      t.references :discount
      t.references :promotion
      t.timestamps
    end
  end
end
