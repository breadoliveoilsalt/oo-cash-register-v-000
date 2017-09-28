require 'pry'

class CashRegister

  attr_accessor :total, :previous_total, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = [ ]
  end


  def add_item(title, price, quantity=1)
#    @total += price * quantity
    i = 0
    while i < quantity
      @total += price
      @items << title
      i += 1
    end
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      discount_percentage = (100-@discount)/100.to_f
      @total *= discount_percentage
      "After the discount, the total comes to $#{@total.to_i}."
    end
        #  binding.pry
  end

  def void_last_transaction

end
