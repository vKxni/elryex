# to loop trough i, you can do/use list comprehensions!

  # for i <- [1, 2, 3], do: i
  # iex> [1, 2, 3]

#  -----------------------------


# for higher numbers, multiply it!

# for i <- [1, 2, 3], do: i*i
  # iex> [1, 4, 9]

defmodule Loop do
  def loop do
    for i <- [1, 2, 3], do: i # *i, whatever.
  end
end

# spam loop:

# fn is a anonymous function with the variable number, -> do something, in our case Print it.
# Enum.each(0..100, fn number -> IO.puts(number) end)
# (https://inquisitivedeveloper.com/lwm-elixir-73/)
