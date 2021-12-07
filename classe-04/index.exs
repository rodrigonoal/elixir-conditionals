sideA = 0
sideB = 0

defmodule Domino do
  def match(sideA, sideB) do
    matches = {"branco", "as", "duque", "terno", "quadra", "quina", "sena"}

    if sideA == sideB do
      elem(matches, sideA)
    else
      "no"
    end
  end
end

IO.puts(Domino.match(sideA, sideB))
