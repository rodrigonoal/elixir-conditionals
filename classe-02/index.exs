defmodule OddOrEven do
  def result(playerOne, playerTwo) do
    sum = playerOne + playerTwo
    remain = rem(sum, 2)
    if remain == 0 do
      "even"
    else
      "odd"
    end
  end
end

IO.puts OddOrEven.result(4,3)
