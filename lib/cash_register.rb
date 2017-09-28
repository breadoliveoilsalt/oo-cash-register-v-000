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
      @total *= (100-@discount)/100.to_f
      "After the discount, the total comes
 to #{@total}."
    end
  end

end
