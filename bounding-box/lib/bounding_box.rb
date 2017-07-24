class BoundingBox
  attr_reader :x, :y, :width, :height

  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left
    return @x
  end

  def right
    return @x + @width
  end

  def bottom
    return @y
  end

  def top
    return @y + @height
  end

  def contains_point?(user_x, user_y)
    if user_x >= self.left && user_x <= self.right && user_y >= self.bottom && user_y <= self.top
      return true
    else
      return false
    end
  end
end
