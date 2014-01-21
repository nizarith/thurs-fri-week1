class Item
	attr_accessor :orig_price, :tax_rate, :import_tax_rate

  def initialize
  	@tax_rate = 0.10
  	@import_tax_rate = 0.05

  end

  def calc_sales_tax(orig_price)
  	orig_price * @tax_rate
  end

  def calc_total(orig_price)
  	orig_price + calc_sales_tax
  end

end


class Exempt < Item

	def initialize(orig_price)
		@tax_rate = 0
		super(price)
	end
end


class Imported < Item

	def initialize(orig_price)
		@import_tax_rate = 0
		super(price)
	end
end

# class Receipt

#   def show_receipt
#   	puts
#   end

# end

book1 = Item.new
book1.calc_sales_tax(12.49) = book1st
book1.calc_total(12.49) = book1tot


