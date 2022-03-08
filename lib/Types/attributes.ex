defmodule MyAttribute do
  @first_date 11
  def first_date, do: @first_date

  @second_date 13
  def second_date, do: @second_date
end

# MyAttribute.first_date => 11
# MyAttribute.second_date => 13
