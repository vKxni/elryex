defmodule Anonymous do
  def multiply do
    multiply = fn (a, b) -> (a * b) end
    multiply.(10, 50)
    # iex> multiply.(5, 5) || we need the dot (.) after multiply to be able to call anonymous functions. Thats how we use them
    # => 25
  end
end
