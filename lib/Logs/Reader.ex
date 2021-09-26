defmodule Reader do
  def scanner do
    _name = IO.gets("What is your name? ") # underscore for unused variable
    |> String.trim() # removing empty space between {input} and :ok
    |> IO.puts()
  end
end
