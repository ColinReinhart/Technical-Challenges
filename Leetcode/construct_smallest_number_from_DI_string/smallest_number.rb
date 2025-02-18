# @param {String} pattern
# @return {String}
def smallest_number(pattern)
  stack = []
  result = ""
  (0..pattern.length).each do |i|
    stack << (i + 1)
    if i == pattern.length || pattern[i] == "I"
      result << stack.pop.to_s while !stack.empty?
    end
  end
  result
end

p smallest_number("IIIDIDDD") == "123549876"
p smallest_number("DDD") == "4321"
