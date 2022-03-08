defmodule QuietCalculator do
  @spec add(number, number) :: number()
  def add(x, y), do: make_quite(LousyCalculator.add(x, y))

  @spec make_quite(LousyCalculator.number_with_remark) :: number()
  defp make_quite({num, _remark}), do: num
end
