defmodule Anonymous do
  def multiply do
    _multiply = fn (a, b) -> (a * b) end
    # iex> multiply.(5, 5) || we need the dot (.) after multiply to be able to call anonymous functions. Thats how we use them
    # => 25
  end
end
