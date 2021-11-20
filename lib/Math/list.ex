defmodule Lister do
  def replace(_list) do
    list = [5, 34, 65, 22, 234, 31, 78]
    {min, max} = Enum.min_max(list) # pattern matching min. and max. number of the list
    max_index = Enum.find_index(list, fn val -> val == max end) # within a anonymous function, we find the index of the max. number
    List.replace_at(list, max_index, min) # replace list with the max number and the min number
  end
end
