class ProductsController < ApplicationController
	def new
		#@quote = Quote.find(params[:id])
		#session[:quote] = @quote.id
		@quote = Quote.find(session[:edit_quote])
		@product = @quote.products.new	
	end

	def create	
		@quote = Quote.find(session[:edit_quote])
		@product = @quote.products.create!(params.require(:product).permit(:product_part))	
		
		respond_to do |format|
			format.html {redirect_to customers_url}
			format.js {
				render
				"alert('help');"
			}

		end
	end

	def index
		@products = Product.all
	end
end
