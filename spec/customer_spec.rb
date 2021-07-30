require 'customer'
require 'menu'

describe Customer do
  let(:menu) {Menu.new}
  let(:customer) {Customer.new}
  it "Should be able to order" do
    customer.order(menu, "Burrito")
    expect(customer.receipt_total).to eq(5)
  end
end