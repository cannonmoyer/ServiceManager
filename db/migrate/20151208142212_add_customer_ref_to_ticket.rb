class AddCustomerRefToTicket < ActiveRecord::Migration
  def change
    add_reference :tickets, :customer, index: true, foreign_key: true
  end
end
