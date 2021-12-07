sideA = 3
sideB = 3

defmodule Domino do
  def match(a, b) do
    if a == b do
      "yes"
    else
      "no"
    end
  end
end

IO.puts Domino.match(sideA, sideB)
