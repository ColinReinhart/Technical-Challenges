# @param {String} s
# @param {String} goal
# @return {Boolean}
def rotate_string(s, goal)
  require 'pry'; binding.pry
end

p rotate_string("abcde", "cdeab") #true
p rotate_string("abcde", "abced") #false
