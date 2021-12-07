defmodule Selection do
  def verifyHeight(height) do
    cond do
    height >= 180 ->
      "APPROVED"
    true ->
      "REPROVED"
    end
  end
end

IO.puts Selection.verifyHeight(190)
