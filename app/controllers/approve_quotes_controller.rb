class ApproveQuotesController < ApplicationController
	def edit
		@quote = Quote.find(params[:id])
		@products = @quote.products

	end

	def approve

	end
end
