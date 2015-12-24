class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_part
      t.string :unit_mdl
      t.text :description
      t.integer :quantity
      t.decimal :price
      t.decimal :total

      t.timestamps null: false
    end
  end
end
