class CashRegister
  
 attr_accessor :total 
  
  def initialize(discount = 0)
    
    @total = 0
    
  end
  
  def self.total
    
    @@total
  end
  
  def add_item(title, price)
    
  end
  
  def apply_discount
    
  end
  
  
end
