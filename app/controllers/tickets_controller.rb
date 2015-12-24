class TicketsController < ApplicationController
	
	def index
		@tickets = Ticket.all
	end

	def create
		@customer = Customer.find(params[:id])
		@ticket = @customer.tickets.create!()
		#@request = Request.create!(description: 'sample descripton')
		#@customer.requests = @request
		#@ticket.save!
		
		redirect_to tickets_path
	end

	def edit
		@ticket = Ticket.find(params[:id])
	end

	def update
		@ticket = Ticket.find(params[:id])	
		@ticket.update(params.require(:ticket).permit(:description))
		redirect_to tickets_url
	end

	def destroy
		@ticket = Ticket.find(params[:id])
		@ticket.destroy
		redirect_to tickets_path
	end
end
