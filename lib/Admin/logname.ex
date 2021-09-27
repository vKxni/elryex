defmodule Log do
  def name do
    IO.gets("Enter your name [ADMIN]: ")
    |> String.trim()
    |> IO.puts()
  end
end
