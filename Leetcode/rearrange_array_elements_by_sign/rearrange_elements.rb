def rearrange_array(nums)
  neg = []
  pos = []
  wip = []
  nums.each do |num|
    if num.negative?
      neg << num
    else
      pos << num
    end
  end
  def combine(neg, pos, wip)
    if neg == [] || pos == []
      return wip
    else
      wip << pos.shift
      wip << neg.shift
      combine(neg, pos, wip)
    end
  end
  combine(neg, pos, wip)
end

p rearrange_array([3,1,-2,-5,2,-4])
p rearrange_array([-1,1])
