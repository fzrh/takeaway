require 'customer'

describe Customer do
	
	let(:customer) {Customer.new('Fazer', '07904832762')}

	it 'has a name' do
		expect(customer.name).to eq 'Fazer'
	end

	it 'has a mobile number' do
		expect(customer.mobile).to eq '07904832762'
	end

end