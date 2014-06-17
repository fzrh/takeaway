require 'order'
require 'dish'
require 'lineitem'

describe Order do

 	let(:satay) {Dish.new('Satay', 0.50)}
  let(:nasi_lemak) {Dish.new('Nasi Lemak', 3.50)}
	let(:order) {Order.new}
	
	it 'adds a dish to the array' do
    order.add(LineItem.new(satay, 10))
		expect(order.lines.count).to eq 1
	end

  it 'calculates the total order' do
    order.add(LineItem.new(satay, 10))
    order.add(LineItem.new(nasi_lemak, 1))
    expect(order.total_amount).to eq 8.50
  end

end