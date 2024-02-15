def rearrange_array(nums)
  neg = []
  pos = []

  nums.each do |num|
    num.negative? ? neg << num : pos << num
  end

  wip = []

  until neg.empty? || pos.empty?
    wip << pos.shift
    wip << neg.shift
  end

  wip.concat(neg) unless neg.empty?
  wip.concat(pos) unless pos.empty?

  wip
end

p rearrange_array([3,1,-2,-5,2,-4])
p rearrange_array([-1,1])
