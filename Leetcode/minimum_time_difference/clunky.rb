# @param {String[]} time_points
# @return {Integer}
def find_min_difference(time_points)
  smallest = []
  array = []

  time_points.map do |time|
   hours, minutes = time.split(':').map(&:to_i)
   array << hours * 60 + minutes
  end

  array.sort!

  array.sort.each_with_index do |t, i|
    if array[i+1] == nil
      break
    else
      smallest << array[i+1] - t
    end
  end

  smallest << (1440 - array.max) + array.min

  smallest.min
end

p find_min_difference( ["23:59","00:00"] ) #1
p find_min_difference( ["00:00","23:59","00:00"] ) #0
