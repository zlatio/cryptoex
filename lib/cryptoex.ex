defmodule Cryptoex do
  def rates_for(currencies) do
    currencies |> Enum.each(fn currency ->
      spawn(Cryptoex.Worker, :rate_for, [currency])
    end)
  end
end
