# @param {String} s
# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def maximum_gain(s, x, y)
  def max_gain_for_pair(s, first, second, score_first, score_second)
    stack = []
    score = 0

    s.each_char do |char|
      if char == second && !stack.empty? && stack[-1] == first
        stack.pop
        score += score_first
      else
        stack.push(char)
      end
    end

    new_s = stack.join
    stack = []

    new_s.each_char do |char|
      if char == first && !stack.empty? && stack[-1] == second
        stack.pop
        score += score_second
      else
        stack.push(char)
      end
    end

    score
  end

  if x > y
    max_gain_for_pair(s, 'a', 'b', x, y)
  else
    max_gain_for_pair(s, 'b', 'a', y, x)
  end
end


p maximum_gain("cdbcbbaaabab", 4, 5) #19
p maximum_gain("aabbaaxybbaabb", 5, 4) #20
