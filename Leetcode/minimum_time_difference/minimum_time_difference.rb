# @param {String[]} time_points
# @return {Integer}
def find_min_difference(time_points)
  minutes = time_points.map { |time| time_to_minutes(time) }

  minutes.sort!

  min_diff = (1440 + minutes[0] - minutes[-1]) % 1440

  (1...minutes.size).each do |i|
    diff = minutes[i] - minutes[i - 1]
    min_diff = [min_diff, diff].min
  end

  min_diff
end

def time_to_minutes(time)
  hours, minutes = time.split(':').map(&:to_i)
  hours * 60 + minutes
end

p find_min_difference(["23:59","00:00"]) #1
p find_min_difference(["00:00","23:59","00:00"]) #0
