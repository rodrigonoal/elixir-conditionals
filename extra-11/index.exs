income = 1_300
time = 6
paidAmount = 1_000_000

defmodule Isa do
  def willNotPay(income, debt, time) do
    stringStart = "No monthly debt because "

    cond do
      debt <= 0 ->
        stringStart <> "the debt has been settled."

      time > 60 ->
        stringStart <> "the deadline for payment has been reached."

      income < 200_000 ->
        stringStart <> "the students income did not reach $200000."

      true ->
        false
    end
  end

  def calcInstallment(income, debt) do
    default = div(income, 100) * 18

    if debt < default do
      debt
    else
      default
    end
  end

  def getInstallment(income, time, paidAmount) do
    debt = 1_800_000 - paidAmount
    willNotPay = willNotPay(income, debt, time)
    installment = calcInstallment(income, debt)
    stringStart = "Your monthly installment is $"

    if willNotPay do
      stringStart <> "0. " <> willNotPay
    else
      stringStart <> "#{installment}."
    end
  end
end

IO.puts(Isa.getInstallment(income, time, paidAmount))
