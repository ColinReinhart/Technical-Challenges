# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  x = 0
  arr = []
  (n+1).times do
    if arr.length == 0
      arr << 0
      x -= 1
    elsif arr.length == 1
      arr << 1
      x -= 1
    elsif arr.length == 2
      arr << arr  .sum
      x -= 1
    else
      arr << arr[x..-1].sum
    end
  end
  arr[-1]
end

p tribonacci(4)
p tribonacci(25)
p tribonacci(1)
p tribonacci(0)
