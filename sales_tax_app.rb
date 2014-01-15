class Goods
  attr_accessor :imported, :exemptst, :cost

  def sales_tax
  	unless exemptst
  		"#{cost}" * 0.10
  	else
  		"#{cost}"
  	end
  end

  def import_tax
  	unless imported
  		"#{cost}" * 0.05
  	else
  		"#{cost}"
  	end
  end

end


# books food and medical products are exempt 

puts "Input 1\:"
puts "1 book at 12.49"
puts "1 music CD at 14.99"
puts "1 chocolate bar at 0.85"

puts "The output is..."

book1 = Goods.new
book1.cost = 12.49
book1.imported = false
book1.exemptst = true

cd1 = Goods.new
cd1.cost = 14.99
cd1.imported = false
cd1.exemptst = false
cd1st = cd1.sales_tax

bar1 = Goods.new
bar1.cost = 0.85
bar1.imported = false
bar1.exemptst = false
bar1st = bar1.sales_tax

puts "Output 1\:"
puts "1 book : #{book1.cost}"
puts "1 music CD: (#{cd1.cost} + #{cd1st})"
puts "1 chocolate bar: (#{cost} + #{bar1st})"
puts "Sales Taxes: #{}"
puts "Total: 29.83"







