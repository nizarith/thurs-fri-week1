class Goods
  attr_accessor :imported, :exempt, :cost

  def sales_tax
  	if !exempt
  		(cost * 0.10)
  	else
  		cost
  	end
  end

  def import_tax
  	if imported
  		(cost * 0.05)
  	else
  		cost
  	end
  end

end


# books food and medical products are exempt

# basket 1...
book1 = Goods.new
book1.cost = 12.49
book1.imported = false
book1.exempt = true

cd1 = Goods.new
cd1.cost = 14.99
cd1.imported = false
cd1.exempt = false
cd1st = cd1.sales_tax

bar1 = Goods.new
bar1.cost = 0.85
bar1.imported = false
bar1.exempt = true

puts "Output 1\:"
puts "1 book: #{book1.cost}"
puts "1 music CD: #{cd1.cost + cd1st}"
puts "1 chocolate bar: #{bar1.cost}"
puts "Sales Taxes: #{cd1st}"
puts "Total: #{book1.cost + cd1.cost + cd1st + bar1.cost}"

# basket 2...

choco1 = Goods.new
choco1.cost = 10.0
choco1.imported = true
choco1.exempt = true
choco1it = choco1.import_tax

perf1 = Goods.new
perf1.cost = 47.50
perf1.imported = true
perf1.exempt = false
perf1it = perf1.import_tax
perf1st = perf1.sales_tax

puts "Output 2\:"
puts "1 imported box of chocolates: #{choco1.cost + choco1it}"
puts "1 imported bottle of perfume: #{perf1.cost + perf1it + perf1st}"
puts "Sales Taxes: #{perf1st}"
puts "Total: #{choco1.cost + choco1it + perf1.cost + perf1it + perf1st}"

# basket 3...

perf2 = Goods.new
perf2.cost = 27.99
perf2.imported = true
perf2.exempt = false
perf2it = perf2.import_tax
perf2st = perf2.sales_tax

perf3 = Goods.new
perf3.cost = 18.99
perf3.imported = false
perf3.exempt = false
perf3st = perf3.sales_tax

head1 = Goods.new
head1.cost = 9.75
head1.imported = false
head1.exempt = true

choco2 = Goods.new
choco2.cost = 11.25
choco2.imported = true
choco2.exempt = true
choco2it = choco2.import_tax

puts "Output 3:"
puts "1 imported bottle of perfume: #{perf2.cost + perf2it + perf2st}"
puts "1 bottle of perfume: #{perf3.cost + perf3st}"
puts "1 packet of headache pills: #{head1.cost}"
puts "1 imported box of chocolates: #{choco2.cost + choco2it}"
puts "Sales Taxes: #{perf2st + perf3st}"
puts "Total: #{perf2.cost + perf2it + perf2st + perf3.cost + perf3st + head1.cost + choco2.cost + choco2it}"
