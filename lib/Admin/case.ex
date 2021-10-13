defmodule Matcher do
  def get_msg(response) do
  case response do
    {:ok, msg} ->
      "Success: #{msg}"
    {:error, msg} ->
      "Error: #{msg}"
    end
  end
end

#iex> success_response = {:ok, "Successfully created!"}
#iex> Matcher.get_msg(success_message)
# => "Success: Successfully created!"

#iex> error_response = {:error, "Error!"}
#iex> Matcher.get_msg(error_message)
# => "Error: Error!"
