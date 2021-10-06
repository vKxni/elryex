defmodule Types do
  def check(x) when is_atom(x) do # check if its an Atom
    IO.puts("X is an Atom!")
  end

  def check(x) when is_binary(x) do # check if its a string
    IO.puts("It's a string!")
  end

  def check(x) when is_number(x) do
    IO.puts("It's a number!")
  end
end
