defmodule WordCount do
  def count(sentence) do
    String.downcase(sentence)
    |> String.split()
    |> List.foldl(%{}, fn word, acc -> Map.update(acc, word, 1, &(&1 + 1)) end)
  end
end

# WordCount.count("elixir is awesome learn elixir") ...
