require 'menu'

class Customer
  attr_reader :receipt_total
  def initialize
    @receipt_total = 0
  end
  def order(menu, user_choice)
    puts menu.items
      if user_choice == menu.items["Burrito"]
        receipt_total += 5
      elsif user_choice == menu.items["Quesadilla"]
        receipt_total += 3.50
      elsif user_choice == menu.items["Devils Steak"]
        receipt_total += 18
      end
  end
end