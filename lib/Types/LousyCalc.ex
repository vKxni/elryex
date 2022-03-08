defmodule LousyCalculator do
  @moduledoc """
    Just a number followed by a string.
  """

  # more typespecs: https://hexdocs.pm/elixir/1.13/typespecs.html#literals
  @type number_with_remark :: {number(), String.t}

  @spec add(number, number) :: number_with_remark()
  def add(x, y), do: {x + y, "Do you really need a calculator to do that? lol"}

  @spec multiply(number, number) :: number_with_remark()
  def multiply(x, y), do: {x * y, "Higher level addition, right?"}
  #                        ^number         ^String.t
end

# @type number_with_something :: number()

# @spec add(number) :: number_with_something()
# def add(a, b), do: a * b
