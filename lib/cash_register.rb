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
    if @discount == nil
      puts "There is no discount to apply."
    else
      discount_percentage = (100-@discount)/100.to_f
      @total *= discount_percentage
      puts "After the discount, the total comes
 to #{@total.to_i}."
    end
        #  binding.pry
  end

end
