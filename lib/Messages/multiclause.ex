defmodule Myself do
  def greet({:formal, name, lastname}) do
    IO.puts("Greetings #{name} #{lastname}")
  end

  # Talking to a mate
  def greet({:informal, name, lastname}) do
    IO.puts("Greetings #{name} #{lastname}")
  end

  def greet(unknown) do              # name from function
    {:error, {:unknown_greeting_type, unknown}}
  end
end
Myself.greet({:formal, "Koni", "Makeroni"})
