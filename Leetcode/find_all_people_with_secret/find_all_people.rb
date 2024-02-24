def find_all_people(n, meetings, first_person)
  confedantes = [0, first_person]
  sorted = meetings.sort_by { |a, b, t| t }
  sorted.each do |m|
    if confedantes.include?(m[0])
      confedantes << m[1]
    elsif confedantes.include?(m[1])
      confedantes << m[0]
    end
  end
  confedantes.uniq
end

p find_all_people(6, [[1,2,5],[2,3,8],[1,5,10]], 1)
p find_all_people(4, [[3,1,3],[1,2,2],[0,3,3]], 3)
p find_all_people(5, [[3,4,2],[1,2,1],[2,3,1]], 1)
p find_all_people(11,[[5,1,4],[0,4,18]] , 1)
