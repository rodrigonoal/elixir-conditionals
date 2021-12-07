waterDrank = 3.1; # in liters

#  < 1,5
# <= 3
# > 3


defmodule Hydration do
  def risk(liters) do
    cond do
      liters > 3 ->
        "Risco Baixo - Você está ingerindo uma boa quantidade de água, parabéns!"
      liters > 1.5 ->
        "Risco Moderado - Você está ingerindo pouca água, beba mais!"
      true ->
        "Risco Alto - Você está ingerindo pouquissima água, beba mais água!"
    end
  end
end

response = Hydration.risk(waterDrank)

IO.puts response
