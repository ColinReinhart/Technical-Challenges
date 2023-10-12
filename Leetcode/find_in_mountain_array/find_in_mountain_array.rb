def findInMountainArray(target, mountain_arr)
  wip = -1
  max = mountain_arr.length()
  counter = 0
  until wip == target || counter == max do
    wip = mountain_arr.get(counter)
    counter += 1
  end

  if wip == target && counter == 0
    return 0
  elsif wip == target && counter != 0
    return counter - 1
  else
    return -1
  end
end


p findInMountainArray(3, [0,1,2,4,2,1])
p findInMountainArray(3, [1,2,3,4,5,3,1])
