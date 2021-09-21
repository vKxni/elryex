defmodule Reader do
  def your_name do
    name = IO.gets("What is your name? ")
    |> String.trim()
    |> IO.puts()
  end
end
