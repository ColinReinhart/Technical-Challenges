def total_money(n)
  weeks = n / 7
  days = n % 7
  total = 0
  total += 28 * weeks
  total += (weeks * (weeks - 1)) / 2 * 7
  total += (weeks + 1..weeks + days).to_a.sum
  total
end

p total_money(4)
p total_money(10)
p total_money(20)
