def range_bitwise_and(left, right)
  shift_count = 0

  while left < right
    left >>= 1
    right >>= 1
    shift_count += 1
  end

  left << shift_count
end

p range_bitwise_and(5, 7)
p range_bitwise_and(0, 0)
p range_bitwise_and(1, 2147483647)
