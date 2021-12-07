# | credit card       | 5%       |
# | cheque             | 3%       |
# | debit card or money | 10%      |

paymentType = "debit card"
productValue = 13000

defmodule Discount do
  def calculate(type, value) do
    case type do
      "credit card" ->
        div(value * 95, 100)

      "cheque" ->
        div(value * 97, 100)

      "debit card" ->
        div(value * 90, 100)

      "money" ->
        div(value * 90, 100)

      _ ->
        value
    end
  end
end

IO.puts(Discount.calculate(paymentType, productValue))
