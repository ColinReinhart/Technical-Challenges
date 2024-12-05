# @param {String} start
# @param {String} target
# @return {Boolean}
def can_change(start, target)
  return false if start.gsub('_', '') != target.gsub('_', '')

  i, j = 0, 0
  n = start.length

  while i < n && j < n
    i += 1 while i < n && start[i] == '_'
    j += 1 while j < n && target[j] == '_'

    if i < n && j < n
      if start[i] != target[j]
        return false
      elsif start[i] == 'L' && i < j
        return false
      elsif start[i] == 'R' && i > j
        return false
      end
    end

    i += 1
    j += 1
  end

  true
end

p can_change("_L__R__R_", "L______RR") #true
p can_change("R_L_", "__LR") #false
