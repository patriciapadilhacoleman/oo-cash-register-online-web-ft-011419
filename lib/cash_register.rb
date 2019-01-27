require "pry"

class CashRegister
  
 attr_accessor :total, :discount, :title, :price, :quantity 
  
  def initialize(discount = 100)
    
    @total = 0
    @discount = discount
    
  end
  
  def self.total
    
    @@total
  end
  
  def add_item(title, price, quantity = 1)
    
    @title = title
    @price = price
    @quantity = quantity
    @total += price * quantity
    
  end
  
  def apply_discount
    
    @total = @total - (@total * (@discount/100))
    
    binding.pry
    
    puts "After the discount, the total comes to #{@total}."
    
  end
  
  
end
