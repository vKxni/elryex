defmodule Gtn do
  def play do
    random = Enum.random(0..10) # get a random number between 0 and 10.

    IO.puts("Guess a number between 0 and 10!")
    guess =
      IO.gets("Enter a number to guess: ")
    |> Integer.parse() # integer.parse returns a tuple

    case guess do
      :error -> IO.puts("This is not a number!")
      {number, _} when number == random -> IO.puts("You guessed it correctly!")
      _ -> IO.puts("Wrong number, it was #{random}")
    end
  end
end
