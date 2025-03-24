# @param {Integer} days
# @param {Integer[][]} meetings
# @return {Integer}
def count_days(days, meetings)
  hash = Hash.new(0)
  (1..days).to_a.each { |day| hash[day] += 1 }

  meetings.each do |meeting|
    (meeting[0]..meeting[1]).to_a.each { |day| hash[day] += 1 }
  end

  return hash.count { |_, value| value == 1 }
end

p count_days(10, [[5,7],[1,3],[9,10]]) #2
p count_days(5, [[2,4],[1,3]]) #1
p count_days(6, [[1,6]]) #0
