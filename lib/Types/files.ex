# defmodule Filess do
#  @files %{
#    example1: File.read!("lib/example1.data"),
#    example2: File.read!("lib/example2.data")
#  }

  # reference the module attribute once in a private function:
#   defp files(), do: @files
#  def example1, do: files()[:example1]
#  def example2, do: files()[:example2]
# end
