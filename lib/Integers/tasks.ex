defmodule Tasks do
  def tasks do
    # [COMMENT] old code - not good

    # number_of_tasks = IO.gets("Enter many tasks would you like to save: ") # => {3, "\n"}
    # IO.puts("Tasks loaded: ")
    # {number_of_tasks, _q} = Integer.parse(number_of_tasks) # q = quote, we are not looking at it.

    # [COMMENT] return:
    # number_of_tasks


    # New code - > replaced 2/3 lines of code with 1 using pipe operator
    # The pipe operator > passes the result of an expression as the first parameter of another expression
    {number_of_tasks, _} = IO.gets("Enter many tasks would you like to save: ") |> Integer.parse()
    number_of_tasks
  end
end
