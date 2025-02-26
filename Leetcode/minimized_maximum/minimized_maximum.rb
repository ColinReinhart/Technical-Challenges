# @param {Integer} n
# @param {Integer[]} quantities
# @return {Integer}
def minimized_maximum(n, quantities)
  left, right = 1, quantities.max

  while left < right
    mid = (left + right) / 2

    stores_needed = quantities.sum { |q| (q + mid - 1) / mid } # Ceiling division

    if stores_needed > n
      left = mid + 1
    else
      right = mid
    end
  end

  left
end

p minimized_maximum(6, [11, 6])       # Output: 3
p minimized_maximum(7, [15, 10, 10])  # Output: 5
p minimized_maximum(1, [100000])      # Output: 100000
