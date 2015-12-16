class QuotesController < ApplicationController

	def index
		@quotes = Quote.all
	end

	def quotes
		@customer = Customer.find(params[:id])
		@quotes = @customer.quotes.all		
	end

	def create
		@customer = Customer.find(params[:id])
		@quote = @customer.quotes.create!()
		redirect_to edit_quote_path(@quote)
	end

	def edit
		@quote = Quote.find(params[:id])
	end

	def update
		@quote = Quote.find(params[:id])	
		@quote.update(params.require(:quote).permit(:service_tech, :purpose))
		redirect_to customers_url
	end

	def destroy
		@quote = Quote.find(params[:id])
		@customer = @quote.customer
		@quote.destroy
		redirect_to customer_quote_path(@customer)
	end
end
