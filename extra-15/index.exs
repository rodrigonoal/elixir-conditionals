myName = "Mario"
mySurname = "Bros"
myAlias = "Super Mario"

defmodule Print do
  def exists(string) do
    String.length(string) > 0
  end

  def name(name, surname, aliass) do
    cond do
      exists(aliass) ->
        aliass

      exists(name) ->
        if exists(surname) do
          name <> " " <> surname
        else
          name
        end
    end
  end
end

IO.puts Print.name(myName, mySurname, myAlias)
