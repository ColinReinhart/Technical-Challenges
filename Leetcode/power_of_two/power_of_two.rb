def is_power_of_two(n)
  @x = 0
  def recursion(n)
    if 2 ** @x < n
      @x += 1
      recursion(n)
    elsif 2 ** @x == n
      return true
    else 2 ** @x > n
      return false
    end
  end
  recursion(n)
end

p is_power_of_two(1)
p is_power_of_two(16)
p is_power_of_two(3)
