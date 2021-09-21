defmodule Tasks do
  def tasks do
    number_of_tasks = IO.gets("Enter many tasks would you like to save: ")
    {number_of_tasks, _q} = Integer.parse(number_of_tasks) # q = quote
    number_of_tasks
  end
end
