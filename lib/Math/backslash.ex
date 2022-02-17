defmodule Bs do
  def add(a \\ 200, b) do # Bs.add(10) => 200 because a default is 200.
    a + b
  end
end
