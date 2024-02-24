def find_all_people(n, meetings, first_person)
  confidantes = [0, first_person]

  sorted_meetings = meetings.sort_by { |m| m[2] }

  sorted_meetings.each do |meeting|
    xi, yi, time = meeting
    if confidantes.include?(xi) || confidantes.include?(yi)
      confidantes |= [xi, yi]
    end
  end

  (0...n).to_a & confidantes.sort
end

p find_all_people(6, [[1,2,5],[2,3,8],[1,5,10]], 1)
p find_all_people(4, [[3,1,3],[1,2,2],[0,3,3]], 3)
p find_all_people(5, [[3,4,2],[1,2,1],[2,3,1]], 1)
p find_all_people(11,[[5,1,4],[0,4,18]] , 1)
p find_all_people(5, [[1,4,3],[0,4,3]], 3)
