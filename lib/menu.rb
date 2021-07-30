class Menu
  attr_accessor :items
  def initialize
    @items = {"Burrito" => 5,
    "Quesadilla" => 5, 
    "Devils Steak" => 5}
  end
  def display   # TO MAKE TESTS EASIER
    return @items  
  end
end