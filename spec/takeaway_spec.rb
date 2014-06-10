require 'takeaway'

describe Takeaway do

	let(:takeaway) {Takeaway.new}

	context 'menu' do

		it 'has a list of dishes with prices' do
			dishes = {
			satay: 0.90, 
			roti_canai: 1.50, 
			nasi_lemak: 2.50,
			teh_tarik: 1.00,
			cendol: 2.00,
			abc: 2.50
			}
			expect(takeaway.menu).to eq dishes
		end
	end

	context 'customer' do

		it 'can place a new order' do
			takeaway.order(:satay, 5)
			expect(takeaway.order_list).to eq [4.50]
		end

		it 'can calculate total amount of order' do
			takeaway.order(:nasi_lemak, 1)
			takeaway.order(:teh_tarik, 1)
			expect(takeaway.total_order).to eq 3.50
		end

		it 'can confirm order made' do
			takeaway.total_order
			expect(takeaway.checkout).to eq "Press Y to confirm order, press N to cancel."
		end	
	end

	context 'order confirmation' do

		xit 'can be sent to customer`s phone' do

		end

	end

end