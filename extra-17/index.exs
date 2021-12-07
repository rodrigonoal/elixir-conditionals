value = 100000;
installments = 10;
paidAmount = 300;


defmodule Installment do
  def whatIsLeft(value, installments, paidAmount) do
    installmentValue = div(value, installments)
    paidInstallments = div((paidAmount * 100), installmentValue)
    installmentsLeft = installments - paidInstallments
    "There are #{installmentsLeft} installments left of ¢#{installmentValue} each"
  end
end

IO.puts Installment.whatIsLeft(value, installments, paidAmount)
