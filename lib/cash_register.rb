require "pry"

class CashRegister
attr_accessor :total, :discount



def initialize(discount = 0)
  @@items = []
  @discount = discount
  @total = 0
end

def add_item(item, price, quantity = 1)
  quantity.times {@@items << item}
  @total += price * quantity
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  else
    @total = @total - (@total*@discount/100)
    return "After the discount, the total comes to $#{@total}."
  end
end

def items
  @@items
end

end
