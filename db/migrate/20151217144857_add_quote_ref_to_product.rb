class AddQuoteRefToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :quote, index: true, foreign_key: true
  end
end
