require 'customer'
require 'menu'

describe Customer do
  let(:menu) {Menu.new}
  let(:customer) {Customer.new}
  it "Should be able to order" do
    customer.order(menu, "Burrito")
    expect(customer.receipt_total).to eq(5)
  end
  it "Should raise an error if receipt total is greater than the combined order" do
    customer.order(menu, "Burrito")
    customer.order(menu, "Quesadilla")
    expect{ customer.check_order }.not_to raise_error("The order doesnt match up!!")
  end
end