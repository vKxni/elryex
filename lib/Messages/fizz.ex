defmodule Fizz do
  def build_list(range, types),
    do: Enum.map(range, &entry(&1, types))

  defp entry(n, types) do
    for {d, val} <- types,
        rem(n, d) == 0,
        reduce: n do
      acc when is_integer(acc) -> val
      acc -> [acc, val]
    end
    |> to_string()
  end
end

types = [
  {3, "Fizz"},
  {5, "Buzz"}
]

1..100
|> Fizz.build_list(types)
|> Enum.intersperse(?\n)
|> IO.puts()
