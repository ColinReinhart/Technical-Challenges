# @param {String} s
# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def maximum_gain(s, x, y)
  score = 0
  left = 0
  right = 1

  def score_ab(s, x, left, right)
    tally = 0
    until s[right] == nil
      if s[left..right] == "ab"
        tally += x
        s[left..right] = ""
        left = 0
        right = 1
      else
        left += 1
        right += 1
      end
    end
    tally
  end

  def score_ba(s,y, left, right)
    tally = 0
    until s[right] == nil
      if s[left..right] == "ba"
        tally += y
        s[left..right] = ""
        left = 0
        right = 1
        else
          left += 1
          right += 1
        end
    end
    tally
  end

  if x > y
    score += score_ab(s, x, left, right)
    score += score_ba(s, y, left, right)
  else
    score += score_ba(s, y, left, right)
    score += score_ab(s, x, left, right)
  end

  score
end

p maximum_gain("cdbcbbaaabab", 4, 5) #19
p maximum_gain("aabbaaxybbaabb", 5, 4) #20
