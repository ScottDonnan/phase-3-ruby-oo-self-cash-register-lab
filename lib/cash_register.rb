require 'pry'

class CashRegister
    attr_accessor :discount, :total, :title, :price, :quantity
    def initialize(total=0, discount=20)
        @total = total
        @discount = discount
    end

    def add_item(title, price, quantity=1)
        self.title= title
        self.price= price
        self.quantity= quantity
        self.total = @total + @price * @quantity
    end

    def apply_discount
        self.total= self.total - (self.discount.to_f/100 * self.total)
    end
end

cart = CashRegister.new
cart.add_item("eggs", 10, 2)

binding.pry