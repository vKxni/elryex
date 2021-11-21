defmodule Characters do
  def length do
    String.graphemes("aaaczzb") # take the string "aaaczzb" and return the number of graphemes
    |> Enum.frequencies()
  end
end
# %{"a" => 3, "b" => 1, "c" => 1, "z" => 2}
