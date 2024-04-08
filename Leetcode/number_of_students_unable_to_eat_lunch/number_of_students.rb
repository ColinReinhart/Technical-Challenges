# @param {Integer[]} students
# @param {Integer[]} sandwiches
# @return {Integer}
def count_students(students, sandwiches)
  while students.include?(sandwiches[0])
    if students[0] == sandwiches[0]
      sandwiches.shift
      students.shift
    else
      students << students.shift
    end
  end
  students.length
end

p count_students([1,1,0,0], [0,1,0,1]) # 0
p count_students([1,1,1,0,0,1], [1,0,0,0,1,1]) # 3
