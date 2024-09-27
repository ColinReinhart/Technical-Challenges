class MyCalendarTwo
    def initialize()
        @calendar = []
    end


=begin
    :type start: Integer
    :type end: Integer
    :rtype: Boolean
=end
    def book(start, finish)
        require 'pry'; binding.pry
    end


end

myCalendar = MyCalendarTwo.new
puts myCalendar.book(10, 20) #true
puts myCalendar.book(50, 60) #true
puts myCalendar.book(10, 40) #true
puts myCalendar.book(5, 15) #false
puts myCalendar.book(5, 10) #true
puts myCalendar.book(25, 55) #true
