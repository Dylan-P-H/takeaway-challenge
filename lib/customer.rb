require 'menu'

class Customer
  attr_accessor :receipt_total, :individual_order_prices, :individual_order_prices_sum
  def initialize
    @receipt_total = 0
    @individual_order_prices = []
    @individual_order_prices_sum = 0
  end
  def order(menu, user_choice)
    puts menu.items
    menu.items.each do |item, price|
      if user_choice == item
        @receipt_total += price
        @individual_order_prices.push(price)
      end
    end
  end
  def check_order
    @individual_order_prices.each { |price| @individual_order_prices_sum+=price }
    fail "The order doesnt match up!!" if @individual_order_prices_sum != @receipt_total
  end
end