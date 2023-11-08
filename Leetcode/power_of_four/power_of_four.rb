# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
  require 'pry'; binding.pry
  if n < 0
    return false
  else
    x = Math.sqrt(n)
    y = Math.sqrt(x)
    return y % 1 == 0
  end
end

p is_power_of_four(16)
p is_power_of_four(5)
p is_power_of_four(1)
p is_power_of_four(-2147483648)
