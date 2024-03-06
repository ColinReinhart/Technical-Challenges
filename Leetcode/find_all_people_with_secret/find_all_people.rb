def find_all_people(n, meetings, first_person)
  confidantes = [0, first_person]  # Initially, both person 0 and first_person have the secret
  meeting_attendees = Hash.new { |hash, key| hash[key] = [] }  # Keep track of meetings attended by each person

  sorted_meetings = meetings.sort_by { |m| m[2] }  # Sort meetings by time

  sorted_meetings.each do |meeting|
    xi, yi, time = meeting

    # Update meeting attendees for both xi and yi
    meeting_attendees[xi] << meeting
    meeting_attendees[yi] << meeting

    # Check if either person xi or yi already knows the secret
    if confidantes.include?(xi) || confidantes.include?(yi)
      # If one person from the meeting already knows the secret, spread the secret to all attendees of that meeting
      attendees = [xi, yi]
      attendees.concat(meeting_attendees[xi].map { |m| m[0] } + meeting_attendees[yi].map { |m| m[1] })
      confidantes |= attendees
    end
  end

  (0...n).to_a & confidantes.sort  # Include both person 0 and first_person, and sort the result
end

p find_all_people(6, [[1,2,5],[2,3,8],[1,5,10]], 1)
p find_all_people(4, [[3,1,3],[1,2,2],[0,3,3]], 3)
p find_all_people(5, [[3,4,2],[1,2,1],[2,3,1]], 1)
p find_all_people(11,[[5,1,4],[0,4,18]] , 1)
p find_all_people(5, [[1,4,3],[0,4,3]], 3)
