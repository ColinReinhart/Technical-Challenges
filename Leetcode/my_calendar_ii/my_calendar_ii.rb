class MyCalendarTwo
    def initialize()
        @single_bookings = []
        @double_bookings = []
    end


=begin
    :type start: Integer
    :type end: Integer
    :rtype: Boolean
=end
    def book(start, finish)
      @double_bookings .each do |db_start, db_end|
        if [start, db_start].max < [finish, db_end].min
          return false
        end
      end

      @single_bookings.each do |sb_start, sb_end|
        overlap_start = [start, sb_start].max
        overlap_end = [finish, sb_end].min

        if overlap_start < overlap_end
          @double_bookings << [overlap_start, overlap_end]
        end
      end

      @single_bookings << [start, finish]
      return true
    end
end

myCalendar = MyCalendarTwo.new
puts myCalendar.book(10, 20) #true
puts myCalendar.book(50, 60) #true
puts myCalendar.book(10, 40) #true
puts myCalendar.book(5, 15) #false
puts myCalendar.book(5, 10) #true
puts myCalendar.book(25, 55) #true
