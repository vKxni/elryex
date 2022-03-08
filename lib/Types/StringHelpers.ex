defmodule StringHelpers do

  # new type word() that is equivalent to the string type => String.t()
  @type word() :: String.t()

  # long_word function takes an argument of type word() and returns a boolean
  # its either true or false.
  @spec long_word?(word()) :: boolean()
  def long_word?(word) when is_binary(word) do
    String.length(word) > 8
  end
end
