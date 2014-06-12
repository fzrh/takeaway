require 'dish'

describe Dish do

  let(:dish) {Dish.new('Nasi Lemak', '2.50')}

  it 'has a name when initialized' do
    expect(dish.name).to eq 'Nasi Lemak'
  end

  it 'has a price when initialized' do
    expect(dish.price).to eq '2.50'
  end

end