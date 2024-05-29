# @param {String} s
# @return {Integer}
def num_steps(s)
  n = s.to_i(2)
  count = 0

  until n == 1 do
    if n.odd?
      n += 1
      count += 1
    else
      n = n / 2
      count += 1
    end
  end
  count
end

p num_steps("1101")
p num_steps("10")
p num_steps("1")
