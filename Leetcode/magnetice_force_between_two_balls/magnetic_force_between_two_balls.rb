def max_distance(position, m)
  position.sort!

  left = 1
  right = position.last - position.first

  def can_place_balls?(position, mid, m)
    count = 1
    last_position = position[0]

    position.each do |p|
      if p - last_position >= mid
        count += 1
        last_position = p
        return true if count >= m
      end
    end

    false
  end

  while left < right
    mid = (left + right + 1) / 2
    if can_place_balls?(position, mid, m)
      left = mid
    else
      right = mid - 1
    end
  end

  left
end

p max_distance([1, 2, 8, 4, 9], 3) #3
p max_distance([5, 4, 3, 2, 1, 1000000000], 2) #999999999
