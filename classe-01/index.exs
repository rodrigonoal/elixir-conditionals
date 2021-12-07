playerOne = "rock"
playerTwo = "scissors"

# rock + paper = 8
# rock + sicssors = 12
# scissors + paper = 13

defmodule RockPaperScissors do
  def result(playOne, playTwo) do
    stringConcat = playOne <> playTwo
    length = String.length(stringConcat)

    cond do
      playOne == playTwo ->
       "draw"
      length == 12 ->
        "rock"
      length == 9 ->
        "paper"
      length == 13 ->
        "scissors"
    end
  end
end

IO.puts RockPaperScissors.result(playerOne, playerTwo)
