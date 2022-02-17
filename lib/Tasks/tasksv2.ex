defmodule Todo do
  def create_todos do
    {number_of_tasks, _} =
    IO.gets("Enter how many tasks you want to add: ") |> Integer.parse()

    for _ <- 1..number_of_tasks do
      IO.gets("Enter task: ") |> String.trim()
    end
  end

  def complete_task(tasks, task) do
    if contains?(tasks, task) do
      List.delete(tasks, task)
    else
      # otherwise execute this block
      "Task does not exist."
    end
  end

  def add_new_todo(tasks, task) do
    List.insert_at(tasks, -1, task)
  end

  def contains?(tasks, task) do
    Enum.member?(tasks, task)
  end

  def keyword_search(tasks, word) do
    for task <- tasks, String.contains?(tasks, word) do
      task
    end
  end

  # randomize and output one random task.
  def random_task(tasks) do
    [task] = Enum.take_random(tasks, 1)
    task
  end

  def save(tasks, filename) do
    # invoking erlang code
    # converting our list so that it can be written to our file system
    binary = :erlang.term_to_binary(tasks)
      File.write(filename, binary)
  end

  def read(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary) # converts the binary to a string
      {:error, _reason} -> "The file does not exist."
    end
  end
end
