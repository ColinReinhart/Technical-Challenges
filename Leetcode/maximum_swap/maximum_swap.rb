# @param {Integer} num
# @return {Integer}
def maximum_swap(num)
  num = num.to_s.split('').map { |n| n.to_i }

  num.each_with_index do |n,i|
    if num[i+1] == nil
      return num.join('').to_i
    elsif n < num[i+1]
      x = n
      y = num[i+1]
      num[i] = y
      num[i+1] = x
      return num.join('').to_i
    end
  end
end

p maximum_swap(2736) # 7236
p maximum_swap(9973) # 9973
