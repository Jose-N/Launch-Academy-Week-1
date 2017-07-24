class BoundingArea
  attr_reader :array_of_boxes

  def initialize(array_of_boxes)
    @array_of_boxes = array_of_boxes
  end

  def boxes_contain_point?(user_x, user_y)
    @array_of_boxes.each do |box|
      if box.contains_point?(user_x, user_y)
        return true
      end
    end
    return false
  end
end
