defmodule Fibo do
  def fib(amount) do
    list = for n <- 1..amount, into: [], do: fib_calc(n)
    IO.inspect list
  end

  defp fib_calc(0), do: 0
  defp fib_calc(1), do: 1
  defp fib_calc(n), do: fib_calc(n-1) + fib_calc(n-2)
end
