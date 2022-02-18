defmodule Characters do
  def length do
    sentence = IO.gets("Enter any word: ")
    sentence
    |> String.trim()
    |> String.graphemes() # take the string of the user and return the number of graphemes
    |> Enum.frequencies()
  end
end
# %{"a" => 3, "b" => 1, "c" => 1, "z" => 2}
