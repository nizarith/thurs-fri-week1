class Goods
  sales_tax_rate = 0.10
  import_tax_rate = 0.05

  def initialize
  	@tax_rate = 0.10
  end

  def calc_salestax(price)
  	price * @tax_rate
  end

  def calc_total(price)
  	price * calc_sales_rate
  end

  def 
end


class Item
  def initialize(price)
  @price = price
end


class FoodTax < Item
  def initialize
		@sales_tax_rate = 0
  end
end


class ImportTax < Item
  def intialize
    @import_tax_rate = 0
  end
end

