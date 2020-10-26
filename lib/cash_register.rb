class CashRegister
    attr_accessor :total, :discount, :title, :price, :quantity, :items, :price, :last_transaction
    attr_reader 
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @price = []
    end

    def add_item(title, price, quantity = 1)
        self.total = price * quantity + total 
        @last_transaction = price * quantity
        quantity.times do
        @items << title
        @price << price
        
        end
    end

    def apply_discount
    if discount > 0
            self.total = total - discount.to_f / 100 * total
         "After the discount, the total comes to $#{total.to_i}."
    else
         "There is no discount to apply."
        end   
    end

    def void_last_transaction
            #@total - @last_transaction
        #if items = [] 
        self.total = self.total - @last_transaction
            
    end
end
