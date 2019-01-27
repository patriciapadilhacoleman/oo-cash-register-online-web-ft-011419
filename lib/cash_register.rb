require "pry"

class CashRegister
  
 attr_accessor :total,:discount, :title, :price, :quantity 

 
  def initialize(discount = 0)
    
    @total = 0
    @discount = discount
    
  end
  
  def self.total
    
    @total
    
  end
  
  def add_item(title, price, quantity = 1)
    
    @title = title
    @price = price
    @quantity = quantity
    @total += price * quantity
    
  end
  
  def apply_discount
    
   
    if @discount != 0
    
      @discount = @discount/100.to_f
      @total = @total - (@total * @discount)
      return "After the discount, the total comes to $#{@total.to_i}."
    
    else
    
      return "There is no discount to apply."
      
    end
    
  end
  
  def items
    
  end
  
  def void_last_transaction
    
  end
  
end
