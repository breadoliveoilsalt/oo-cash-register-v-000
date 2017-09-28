require 'pry'

class CashRegister

  attr_accessor :total, :previous_total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end


  def add_item(title, price, quantity=1)
    @total += price * quantity
  end

  def apply_discount
    if !@discount == nil
      discount_percentage = (100-@discount)/100.to_f
      binding.pry
      @total *= discount_percentage
      "After the discount, the total comes
 to #{@total}."
    end
  end

end
