age = 16;
ill = false;
height = 180;
student = false;

defmodule Rollercoaster do
  def ticketPrice(age, student) do
    if age < 18 || student do
      "$10"
    else
      "$20"
    end
  end


  def isAllowed(age, ill, height, student) do
    if age < 12 || age > 65 || ill || height < 150 do
      "NOT ALLOWED"
    else
      ticketPrice(age, student)
    end
  end
end

IO.puts Rollercoaster.isAllowed(age, ill, height, student)
