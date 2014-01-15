class Goods
  attr_accessor :imported; :exemptst; :cost;

  def sales_tax
  	unless @exemptst
  		return "#{cost}" * 0.10
  	else
  		return "#{cost}"
  	end
  end

  def import_tax
  	unless @imported
  		return "#{cost}" * 0.05
  	else
  		return "#{cost}"
  	end
  end



puts "Input 1\:"
puts "1 book at 12.49"
puts "1 music CD at 14.99"
puts "1 chocolate bar at 0.85"

book1 = Goods.new
book1
 






puts "Input 2\:"
puts "1 imported box of chocolates at 10.00"
puts "1 imported bottle of perfume at 47.50"
 







puts "Input 3\:"
puts "1 imported bottle of perfume at 27.99"
puts "1 bottle of perfume at 18.99"
puts "1 packet of headache pills at 9.75"
puts "1 box of imported chocolates at 11.25"