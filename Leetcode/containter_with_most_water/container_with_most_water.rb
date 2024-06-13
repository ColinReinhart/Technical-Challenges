def max_area(height)
  left = 0
  right = height.length - 1
  max_area = 0

  while left < right
    # Calculate the area
    current_area = [height[left], height[right]].min * (right - left)
    # Update the maximum area found
    max_area = [max_area, current_area].max

    # Move the pointer pointing to the shorter line inward
    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end

  max_area
end

p max_area([1,8,6,2,5,4,8,3,7])
p max_area([1,1])
