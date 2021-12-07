defmodule Selection do
  def verifyHeight(height) do
    cond do
    height > 205 ->
      "CENTRAL"
    height > 195 ->
      "OPOSTO"
    height > 185 ->
      "PONTEIRO"
    height > 180 ->
      "LIBERO"
    true ->
      "REPROVED"
    end
  end
end

IO.puts Selection.verifyHeight(196)
