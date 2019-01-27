require "pry"

class CashRegister
  
 attr_accessor :discount, :title, :price, :quantity 
 @@total
 
  def initialize(discount = 100)
    
    @@total = 0
    @discount = discount
    
  end
  
  def self.total
    
    @@total
    
  end
  
  def add_item(title, price, quantity = 1)
    
    @title = title
    @price = price
    @quantity = quantity
    @@total += price * quantity
    
  end
  
  def apply_discount
    
    binding.pry
    @@total = @@total - (@@total * (discount/100))
    
    
    puts "After the discount, the total comes to #{@total}."
    
  end
  
  
end
