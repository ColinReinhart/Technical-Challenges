# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  if n == 0 || n == 1
    return n
  elsif n == 2
    return 1
  end
  arr = [0, 1, 1]
  x = n - 3
  x.times do
    arr << arr[-3..-1].sum
  end
  return arr[-3..-1].sum
end

# p tribonacci(4)
p tribonacci(25)
