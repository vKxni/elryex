defmodule Vocal do
  def remove do
    sentence = "Hallo, ich bin die Ulrike und auch dabei!"
    sentence
    |> String.graphemes()
    |> Enum.filter(fn char -> String.downcase(char) not in ["a", "e", "i", "o", "u"] end)
    |> Enum.join()
    |> IO.puts()
    IO.puts(sentence)
  end

  def remove2 do
    sentence = "Hallo, ich bin die Ulrike und auch dabei!"
    String.replace(sentence, ~r/[aeiou]/i, "")
    |> IO.puts()
    IO.puts(sentence)
  end
end
