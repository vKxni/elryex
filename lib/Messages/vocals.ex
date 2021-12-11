defmodule Vocal do
  def remove do
    string = "Hallo, ich bin die Ulrike und auch dabei!"
    string
    |> String.graphemes()
    |> Enum.filter(fn char -> String.downcase(char) not in ["a", "e", "i", "o", "u"] end)
    |> Enum.join()
    |> IO.puts()
    IO.puts(string)
  end
end
