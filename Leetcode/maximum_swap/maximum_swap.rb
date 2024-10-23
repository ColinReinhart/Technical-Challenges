# @param {Integer} num
# @return {Integer}
def maximum_swap(num)
  digits = num.to_s.chars.map(&:to_i)
  n = digits.size

  max_idx = Array.new(n)
  max_idx[n-1] = n-1

  (n-2).downto(0) do |i|
    if digits[i] > digits[max_idx[i+1]]
      max_idx[i] = i
    else
      max_idx[i] = max_idx[i+1]
    end
  end

  (0...n).each do |i|
    if digits[i] < digits[max_idx[i]]
      digits[i], digits[max_idx[i]] = digits[max_idx[i]], digits[i]
      break
    end
  end

  digits.join.to_i
end

p maximum_swap(2736)  # 7236
p maximum_swap(9973)  # 9973
p maximum_swap(98368) # 98863
