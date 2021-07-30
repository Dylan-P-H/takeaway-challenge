require 'menu'

describe Menu do
  let(:menu) {Menu.new}
  it "Should display a list of menu items" do
    expect(menu.items).not_to be_empty
  end
  it "Should display the menu for the customer" do
    expect(menu.display).to eq(menu.items)
  end
end