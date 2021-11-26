defmodule Generate do
  def file do
    {:ok, file} = File.open("Test.txt", [:write])
    IO.write(file, "Some text here!")
    File.close(file)
  end
end
