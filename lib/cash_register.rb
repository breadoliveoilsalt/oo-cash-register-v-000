class CashRegister

  attr_accessor :total, :previous_total

  def initialize(discount = nil)
    @total = 0
  end


  def add_item(title, price, quantity=1)
    @total += price * quantity
  end

  def apply_discount
    
end
