require 'rubygems'
require 'twilio-ruby'

class Takeaway

	def initialize

		@menu = {
			   satay: 0.90, 
			   roti_canai: 1.50, 
			   nasi_lemak: 2.50,
			   teh_tarik: 1.00,
			   cendol: 2.00,
			   abc: 2.50
				}
		@order_list ||= []
	end

	def menu
		@menu
	end

	def order(dish, quantity)
		order_list << menu[dish] * quantity
	end

	def order_list
		@order_list
	end

	def total_order
		total_order = 0
		order_list.inject(:+)
	end

	def checkout
		puts "Press Y to confirm order, press N to cancel."
		user_input
	end

	def user_input
		user_input = gets.chomp
		send_text(user_input)
	end

	def send_text(string)
		if string == "Y"
			twilio
		else
			"Order has been cancelled" 
		end
	end

	def twilio
		account_sid = 'AC4af234f99d5719d6b53e36ddd9770dc3'
		auth_token = '1e1c92fe304d337d855bed385fcafbd5'
		@client = Twilio::REST::Client.new account_sid, auth_token
		message = @client.account.messages.create(:body => "Your order will be delivered in an hour",
    	:to => "+447904832762",
    	:from => "+441276300091")
		puts message.sid
	end
end