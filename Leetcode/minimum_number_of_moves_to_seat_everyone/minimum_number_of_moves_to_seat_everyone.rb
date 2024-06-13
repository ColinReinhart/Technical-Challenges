# @param {Integer[]} seats
# @param {Integer[]} students
# @return {Integer}
def min_moves_to_seat(seats, students)
  x = seats.sort
  y = students.sort
  moves = 0

  moves += (x.shift - y.shift).abs until x.empty?

  moves
end

p min_moves_to_seat([3,1,5], [2,7,4]) # 4
p min_moves_to_seat([4,1,5,9], [1,3,2,6]) # 7
p min_moves_to_seat([2,2,6,6], [1,3,2,6]) # 4
