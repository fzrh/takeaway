require 'lineitem'
require 'dish'

describe LineItem do
  let(:satay) { Dish.new('Satay', 0.50)}
  let(:nasi_lemak) { Dish.new('Nasi Lemak', 3.50)}
  let(:line)   { LineItem.new(satay) }
  let(:line2)  { LineItem.new(burger, 2) }

  it 'has a dish' do
    expect(line.dish).to eq satay
  end

  it 'has a default quantity of 1' do
    expect(line.quantity).to eq 1
  end

  it 'can update the quantity' do
    line = LineItem.new(:dish, 5)
    expect(line.quantity).to eq 5
  end

  it 'can calculates its total cost' do
    line = LineItem.new(satay, 10)
    expect(line.total).to eq 5.00
  end

end