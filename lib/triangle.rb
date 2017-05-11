# module Errormod
#   class TriangleError < StandardError
#     def message
#       "Triangle is invalid."
#     end
#   end
# end

class Triangle
  # write code here
  # include Errormod

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height

  end

  def kind
    if @length + @height < @width || @width + @height < @length || @width + @length < @height || @length <= 0 || @width <= 0 || @height <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    else
      return :equilateral if @length == @width && @width == @height
      return :isosceles if @length == @width || @width == @height || @length == @height
      return :scalene
    end


  end


end

class TriangleError < StandardError
    def message
      "Triangle is invalid."
    end
end
