defmodule Int do
  def integer do
    a = "2342345"
    Integer.parse(a) # log the number without strings
    # You could also do parse_return = Integer.parse(a) -> its the same
  end
end

# {a, b} = Integer.parse(a)
# Output: {12, ""} (because a is declared and b are quotes)
