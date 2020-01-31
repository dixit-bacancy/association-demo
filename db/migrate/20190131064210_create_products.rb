class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :price
      t.integer :quantity
      t.string :company
      t.string :image

      t.timestamps
    end
  end
end
