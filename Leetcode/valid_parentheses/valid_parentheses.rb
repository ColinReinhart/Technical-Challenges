# @param {String} s
# @return {Boolean}
def is_valid(s)
  require 'pry'; binding.pry
end

p is_valid("()") #true
p is_valid("()[]{}") #true
p is_valid("(]") #false
