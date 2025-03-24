# @param {Integer} days
# @param {Integer[][]} meetings
# @return {Integer}
def count_days(days, meetings)
  return days if meetings.empty?

  meetings.sort_by!(&:first)
  merged = []
  current_start, current_end = meetings[0]

  meetings[1..].each do |start_day, end_day|
    if start_day <= current_end + 1
      current_end = [current_end, end_day].max
    else
      merged << [current_start, current_end]
      current_start, current_end = start_day, end_day
    end
  end
  merged << [current_start, current_end]

  covered = merged.sum { |start_day, end_day| end_day - start_day + 1 }

  days - covered
end

p count_days(10, [[5,7],[1,3],[9,10]]) #2
p count_days(5, [[2,4],[1,3]]) #1
p count_days(6, [[1,6]]) #0
