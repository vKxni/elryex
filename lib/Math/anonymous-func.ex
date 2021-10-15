defmodule Anonymous do
  def multiply(number1, number2) do
    multiply = fn (a, b) -> (a * b) end
    multiply.(number1, number2)
  end
end



# The idea behind is (basic):

# iex> multiply = fn (a, b) -> (a * b) end
# iex> multiply.(5, 5) || we need the dot (.) after multiply to be able to call anonymous functions. Thats how we use them
# => 25
