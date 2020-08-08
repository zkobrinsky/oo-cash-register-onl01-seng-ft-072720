require "pry"

class CashRegister
attr_accessor :total, :discount



def initialize(discount = 0)
  @@items = []
  @discount = discount
  @total = 0
end

def add_item(item, price, quantity = 1)
  # binding.pry
  if quantity != 1
    i = 0
    while i < quantity
      @@items << item
      i += 1
    end
  else @@items << item
  end
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
