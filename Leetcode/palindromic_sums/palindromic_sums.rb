def palindromic_sums
  wip = []
  num = 0
  until wip.count == 25 do
    num += 1
    sum = num.to_s.reverse.to_i + num
    if sum > 1000 && sum.to_s == sum.to_s.reverse
      wip << num
    end
  end
  return wip
end

p palindromic_sums
