class SalesTax

  def initialize
  	@tax_rate = 0.10
  	@import_tax_rate = 0.05
  end

  def calc_salestax(price)
  	price * @tax_rate
  end

  def calc_total(price)
  	price * calc_sales_rate
  end
end


class Item < SalesTax
  def initialize(price)
  @price = price
  end
end


class FoodTax < Item
  def initialize
		@tax_rate = 0
  end
end


class ImportTax < Item
  def intialize
    @import_tax_rate = 0
  end
end

