class CreatePizzaPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :pizza_prices do |t|
      t.float      :price
      t.references :pizza_size
      t.references :pizza
      t.timestamps
    end
  end
end
