class CustomersController < ApplicationController
	def index
		@customers = Customer.all
	end

	def destroy
		@customer = Customer.find(params[:id])
		@customer.destroy
		redirect_to customers_url
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def update
		@customer = Customer.find(params[:id])	
		@customer.update(params.require(:customer).permit(:name, :company, :phone, :email, :billing_address, :shipping_address, :taxable, :tax_location))
		redirect_to customers_url
	end

	def new
		@customer = Customer.new
	end

	def create
		Customer.create!(params.require(:customer).permit(:name, :company, :phone, :email, :billing_address, :shipping_address, :taxable, :tax_location ))	
		redirect_to customers_url
	end
end
