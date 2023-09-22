def add_digits(num)
  sum = nil
  until sum.to_s.length == 1
  wip = num.to_s.split("").map { |x| x.to_i }
  sum = wip.sum
    if sum.to_s.length == 1
      return sum
    else
      num = sum
    end
  end
end

p add_digits(138) == 3
p add_digits(38) == 2
p add_digits(38456789123)
