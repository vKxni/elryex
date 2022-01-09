defmodule Greeter do
  def hello(%{name: person_name} = person) do
    IO.puts "Hello, " <> person_name
    IO.inspect person
  end

  def hello2(person = %{name: person_name}) do
    IO.puts "Hello," <> person_name
    IO.inspect person
  end
end

# 1. Always create a map with
# fred = %{
# name: "Name"
# ...
# }


# call with entire person
# > Greeter2.hello(fred)
# .. "Hello, Fred"
# .. %{age: "95", favorite_color: "Taupe", name: "Fred"}

# call with only the name key
# > Greeter2.hello(%{name: "Fred"})
# .. "Hello, Fred"
# .. %{name: "Fred"}

# call without the name key
# > Greeter.hello(%{age: "95", favorite_color: "Taupe"})
# ..** (FunctionClauseError) no function clause matching in Greeter2.hello/1

  #  The following arguments were given to Greeter2.hello/1:

        # 1
  #      %{age: "95", favorite_color: "Taupe"}

  #  iex:15: Greeter.hello/1
