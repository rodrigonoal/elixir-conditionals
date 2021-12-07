char = "c"

defmodule Charactere do
  def identify(char) do
    charUp = String.upcase(char)
    charDown = String.downcase(char)
    pattern = :binary.compile_pattern(["A", "E", "I", "O", "U"])

    cond do
      String.contains?(charUp, pattern) ->
        if char == charUp do
          "Uppercase vowel"
        else
          "Lowercase vowel"
        end

      charDown == charUp ->
        "Number"

      true ->
        "Consonant"
    end
  end
end

IO.puts(Charactere.identify(char))
