defmodule Todos do
  def tasks do
    # [COMMENT] old code

    # number_of_tasks = IO.gets("Enter many tasks would you like to save: ") # Output => {3, "\n"}
    # IO.puts("Tasks loaded: ")
    # {number_of_tasks, _q} = Integer.parse(number_of_tasks) # q = quote, we are not looking at it.

    # [COMMENT] return:
    # number_of_tasks


    # New code - > replaced 2/3 lines of code with 1 using: pipe operator
    # The pipe operator > passes the result of an expression as the first parameter of another expression
    {number_of_tasks, _} = IO.gets("Enter many tasks would you like to save: ") |> Integer.parse()
    number_of_tasks
  end

  # Enum Module: Task Array
  def temp_todos do
    ["task 1", "task 2", "task 3"]
  end

  # HOW TO RAMDOMIZE + boolean
  #> todos_list = Todos.temp_todos()
  #> Todos.contains?(todo_list, "task 1")
  #> Todos.random_task(todo_lidt)
  # [OUTPUT]: true, if Items exists in temp_todus aka todo_list (recalled) || else: false + random Task
  def contains?(tasks, task) do
    Enum.member?(tasks, task)
  end

  def random_task(tasks) do
    [task]= Enum.take_random(tasks, 1)
    task
  end
end
