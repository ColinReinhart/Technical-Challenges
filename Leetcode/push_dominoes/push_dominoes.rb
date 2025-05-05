# @param {String} dominoes
# @return {String}
def push_dominoes(dominoes)
  n = dominoes.length
  forces = Array.new(n, 0)

  force = 0
  (0...n).each do |i|
    if dominoes[i] == 'R'
      force = n
    elsif dominoes[i] == 'L'
      force = 0
    else
      force -= 1 if force > 0
    end
    forces[i] += force
  end

  force = 0
  (n - 1).downto(0) do |i|
    if dominoes[i] == 'L'
      force = n
    elsif dominoes[i] == 'R'
      force = 0
    else
      force -= 1 if force > 0
    end
    forces[i] -= force
  end

  result = ''
  forces.each do |f|
    if f > 0
      result << 'R'
    elsif f < 0
      result << 'L'
    else
      result << '.'
    end
  end

  result
end

p push_dominoes("RR.L") #"RR.L"
p push_dominoes(".L.R...LR..L..") #"LL.RR.LLRRLL.."
