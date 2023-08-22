def find_target(payload, target)
  answer = []
  payload.each do |pay|
    payload.each do |load|
      if pay != load
        if pay + load == target
          answer << pay
          answer << load
          return answer
        end
      end
    end
  end
  return answer
end

p find_target([1, 3, 4, 5, 10], 15)
p find_target([-1, -3, 4, 7, -5, 18, 10, -23, 5], 15)
p find_target([-3, -34, 2, 6, 40, -4], 1)
