class CashRegister

attr_accessor :total, :discount, :quantity, :last_transaction

	def initialize(discount = 0)
	@total = 0
	@discount = discount
	@@CART = []
	end

	def add_item(title, price, quantity = 1)
	@total += (price * quantity)
	quantity.times do
	@@CART << title
end    
	self.last_transaction = price * quantity
end

	def apply_discount
	if @discount != 0
		@total *= (100.0 - discount.to_f) * 0.01.to_f
		"After the discount, the total comes to $#{@total.to_i}."
	else
		"There is no discount to apply."
	end
end

	def items
		return @@CART
	end

	def void_last_transaction
    self.total -= self.last_transaction
	end

end