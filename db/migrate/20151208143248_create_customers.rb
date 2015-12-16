class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :company
      t.string :phone
      t.string :email
      t.string :billing_address
      t.string :shipping_address
      t.boolean :taxable
      t.string :tax_location

      t.timestamps null: false
    end
  end
end
