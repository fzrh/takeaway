class Order

  attr_reader :lines

  def initialize
    @lines = []
  end

  def add(dish)
    lines << dish
  end

  def display
    lines.map.with_index do |dish, index|
      "#{index+1}. #{dish[:quantity]} x #{dish[:name]}\n"
    end
  end

  def total_amount
	@lines.inject(0) { |total,line| total += line.total }
  end

  def checkout
    account_sid = 'AC4af234f99d5719d6b53e36ddd9770dc3'
    auth_token = '1e1c92fe304d337d855bed385fcafbd5'
    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.account.messages.create(:body => "Your order will be delivered in an hour",
      :to => "+447904832762",
      :from => "+441276300091")
    puts message.sid
  end

end