class CustomerMailer < ApplicationMailer
	default from: 'notifications@example.com'
 
  	def email_quote(customer, quote)
    	@customer = customer
    	@quote = quote
    	#@url  = 'http://localhost:3000/quotes/#{a}/quote'
    	mail(to: @customer.email, subject: 'Treadmill Doctor Quote')
  	end
end

