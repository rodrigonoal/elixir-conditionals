day = 7;

defmodule Weekdays do
  def whatWeekday(day) do
    weekdays = {"Mon", "Tues", "Wednes", "Thurs", "Fri", "Staur", "Sun"}
    index = rem((day - 1), 7)
    elem(weekdays, index) <> "day"
  end
end

IO.puts Weekdays.whatWeekday(day)
