class Point

	def initialize(x,y)
		@x = x
		@y = y
	end

  def to_s
  	"#{@x},#{@y}"
  end
  
  def add(point)
  	Point.new(@x + @y)
  end
end

point = Point.new(1,2)
puts point