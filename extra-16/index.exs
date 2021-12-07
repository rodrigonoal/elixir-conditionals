age = 31
hasAGuardian = false

defmodule Reenronlling do
  def possible(age, guardian) do
    if age >= 18 || guardian do
      "You have successfully re-enrolled"
    else
      "You have not successfully re-enrolled"
    end
  end
end

IO.puts Reenronlling.possible(age, hasAGuardian)
