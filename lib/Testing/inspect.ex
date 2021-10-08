defmodule Write do
  def print do
    result = IO.inspect("Hello") # prints "Hello"
    IO.puts(result)              # prints Hello
  end
end
