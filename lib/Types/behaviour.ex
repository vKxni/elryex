defmodule MyBehaviour do
  # the arguments that the callback must accept (arg :: any in the example)
  # the expected type of the callback return value
  @callback my_fun(arg :: any) :: any()
end

defmodule MyCallbackModule do
  @moduledoc """
  If a callback module that implements a given behaviour doesn't export all the functions
  and macros defined by that behaviour,
  the user will be notified through warnings during the compilation process (no errors will happen).
  """
  @behaviour MyBehaviour
  def my_fun(arg), do: arg
end

# iex> MyBehaviour.behaviour_info(:callbacks)
# => [my_fun: 1]

# iex> MyBehaviour.behaviour_info(:optional_callbacks)
# => []
