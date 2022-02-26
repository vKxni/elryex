defmodule Gtn do
  def play do
    random = Enum.random(0..10) # get a random number between 0 and 10.

    IO.puts("Guess a number between 0 and 10!")
    guess =
      IO.gets("Enter a number to guess: ")
    |> Integer.parse() # integer.parse returns a tuple

    case guess do
      :error -> IO.puts("This is not a number!")

      # using guards
      #  {number, _} when number == random -> IO.puts("You guessed it correctly!")

      # could be written with the pin operator
      {^random, _} -> IO.puts("You guessed it correctly!")

      _ -> IO.puts("Wrong number, it was #{random}")
    end
  end
end

# About the docs above:

# elixir takes the value in case value do and tries to fit it into each pattern in each clause, then checks if any associated guards are also true
# so, for {random, _} when random == guess, elixir first fits guess into that tuple; guess looks like:

                                # {2, “\n”}
# so the pattern matches and it binds random to 2 (shadowing the original value of random) and throws away the other part.
# now it checks the guard: random is 2 in this scope, but guess is still {2, “\n”}, so 2 == {2, “\n”} is false, and it skips to the next clause ...
# if you want to pattern match to a variable’s bound value instead of binding a new value to it, use the pin operator (^)
# in front of the variable name, like {^random, _}; so you won’t need a guard in this case
