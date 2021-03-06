defmodule Fibo do
  def fib(amount, results \\ [], current \\ 1)

  def fib(amount, results, current) when current > amount, do: Enum.reverse(results)

  def fib(amount, [prev, prev2 | rest], current) do
    next = prev + prev2
    fib(amount, [next, prev, prev2 | rest], current + 1)
  end

  def fib(amount, [prev | rest], current) do
    next = prev
    fib(amount, [next, prev | rest], current + 1)
  end

  def fib(amount, [], current) do
    fib(amount, [1], current + 1)
  end
end

# old
#defmodule Fibo do
#  def fib(amount) do
#    list = for n <- 1..amount, into: [], do: fib_calc(n)
#    IO.inspect list
#  end

# defp fib_calc(0), do: 0
#  defp fib_calc(1), do: 1
#  defp fib_calc(n), do: fib_calc(n-1) + fib_calc(n-2)
#end
