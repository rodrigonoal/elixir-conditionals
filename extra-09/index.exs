defmodule Marks do
  def swap(num) do
    cond do
      num >= 9 ->
        "A"

      num >= 8 ->
        "B"

      num >= 6 ->
        "C"

      num >= 4 ->
        "D"

      true ->
        "E"
    end
  end
end


IO.puts Marks.swap(8.9)
