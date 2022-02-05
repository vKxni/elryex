
# OLD SOURCE:

#defmodule Prime do
#  def search(from, to) do
#    _all = Enum.to_list(from .. to)
#    _divisible = for n <- from .. to, m <- from .. to,
#      m < n && n > 1, # Filter 1
#      m > 1 && rem(n,m) == 0, # Filter 2
#      into: [], do: n
#  end
#end


defmodule Prime do
  def search(from, to) do
    range = from .. to
    for lower <- range, upper <- range,
    upper < lower and lower > 1, # Filter 1
    upper > 1 and rem(lower,upper) == 0, # Filter 2
      into: [], do: lower
  end
end
