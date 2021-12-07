retired = false
ill = false
income = 1_000_000

defmodule Tax do
  def reckon(retired, ill, income) do
    cond do
      retired || ill ->
        "EXEMPT"
      income < 2_855_970 ->
        "TOO POOR FOR TAXES"
      true ->
        "GO GET IT, LION"
    end
  end
end

IO.puts Tax.reckon(retired, ill, income)
