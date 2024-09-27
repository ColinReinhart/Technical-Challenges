class MyCalendar
    def initialize()
      @calendar = []
    end

    def book(start, finish)
      @calendar.each do |event_start, event_end|
        if start < event_end && event_start < finish
          return false
        end
      end

      @calendar << [start, finish]
      return true
    end
end

myCalendar = MyCalendar.new
puts myCalendar.book(10, 20)
puts myCalendar.book(15, 25)
puts myCalendar.book(20, 30)
