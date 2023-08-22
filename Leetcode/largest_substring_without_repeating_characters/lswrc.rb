# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  a = s.split("")

  if a == a.uniq
    return a.count
  end

  h = {}
  count = 0
  current_high = 0

  a.map.with_index { |letter, index| h[index] = letter }
  h.each do | i, l |
     h.each do | indx, let |
       if i > indx
         current_high = 0
       elsif i == indx || i < indx && l != let
         current_high += 1
         if count < current_high
           count = current_high
         end
       elsif l == let && current_high > count
           count = current_high
           current_high = 0
        elsif  l == let && current_high <= count
          current_high = 0
       end
    end
    require "pry"; binding.pry
  end
  return count
end

p length_of_longest_substring("abcabcbb")
# p length_of_longest_substring("bbbbb")
# p length_of_longest_substring("pwwkew")
# p length_of_longest_substring(" ")
# p length_of_longest_substring("au")
# p length_of_longest_substring("aab")
