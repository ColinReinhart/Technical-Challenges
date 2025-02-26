# @param {String} s
# @param {String} goal
# @return {Boolean}
def rotate_string(s, goal)
  return true if s == goal
  wip = s.split('')

  wip.length.times do
    wip << wip.shift
    if wip.join('') == goal
      return true
    end
  end
  return false
end

p rotate_string("abcde", "cdeab") #true
p rotate_string("abcde", "abced") #false
