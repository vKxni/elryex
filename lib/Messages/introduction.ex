defmodule Koni do
  def myself({name, _age, _country} = record) do
    IO.inspect(record)
    IO.puts(name)

  end
end
Koni.myself({:hello!, :hi, :bye})
# prints Hello
