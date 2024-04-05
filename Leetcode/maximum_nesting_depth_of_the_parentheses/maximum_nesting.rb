# @param {String} s
# @return {Integer}
def max_depth(s)
  max = 0
  count = 0
  split = s.split('')
  split.each do |char|
    if char == '('
      count += 1
      max = count if count > max
    elsif char == ')'
      count -= 1
    end
  end
  max
end

p max_depth("(1+(2*3)+((8)/4))+1") # 3
p max_depth("(1)+((2))+(((3)))") # 3
