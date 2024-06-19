# @param {Integer[]} bloom_day
# @param {Integer} m
# @param {Integer} k
# @return {Integer}
def min_days(bloom_day, m, k)
  return -1 if bloom_day.length < m * k

  left = 1
  right = bloom_day.max

  def can_make_bouquets?(bloom_day, m, k, mid)
    count = 0
    flowers = 0

    bloom_day.each do |day|
      if day <= mid
        flowers += 1
        if flowers == k
          count += 1
          flowers = 0
        end
      else
        flowers = 0
      end
    end

    count >= m
  end

  while left < right
    mid = (left + right) / 2
    if can_make_bouquets?(bloom_day, m, k, mid)
      right = mid
    else
      left = mid + 1
    end
  end

  left
end


p min_days([1,10,3,10,2], 3, 1) # 3
p min_days([1,10,3,10,2], 3, 2) # -1
p min_days([7,7,7,7,12,7,7], 2, 3)  # 12
