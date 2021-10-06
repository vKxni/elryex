defmodule Myself do
  def greet({:formal, name, lastname}) do
    IO.puts("Greetings #{name} #{lastname}")
  end

  # Talking to a mate
  def greet({:informal, name, lastname}) do
    IO.puts("Greetings #{name} #{lastname}")
  end

  # handling the error
  def greet(unknown) do              # name from function
    {:error, {:unknown_greeting_type, unknown}}
  end
end

# the actual greet into the Console
Myself.greet({:formal, "Koni", "Makeroni"})

# [CONSOLE]:
# iex> Myself.greet({:formal, "Koni", "Makeroni"})
