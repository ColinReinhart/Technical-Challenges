# @param {Integer} x
# @return {Integer}
def reverse(x)
  rev = x.to_s.reverse.to_i
  if x.negative? && rev > -2147483648 && rev < 2147483648
    return -rev
  elsif rev > -2147483648 && rev < 2147483648
    return rev
  else
    return 0
  end
end

p reverse(123)
p reverse(-123)
p reverse(120)
