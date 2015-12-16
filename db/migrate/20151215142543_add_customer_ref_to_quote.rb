class AddCustomerRefToQuote < ActiveRecord::Migration
  def change
    add_reference :quotes, :customer, index: true, foreign_key: true
  end
end
