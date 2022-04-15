require_relative 'task'
require_relative 'view'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  # instance methods in the controller are user actions
  def add_task
    # 1. Tell the view to ask the  user for a title
    title = @view.ask_for_title
    # 2. Create an instance of task using that title
    task = Task.new(title)
    # 3. Store the task in the repository
    @repository.add_task(task)
  end

  def list_tasks
    display_tasks
  end

  def mark_task_as_done
    # 1. Display the tasks
    display_tasks
    # 2. Tell the view to ask which task to mark
    index = @view.ask_for_index
    # 3. Get that task from the repository
    task = @repository.find(index)
    # 4. Mark the task as done
    task.mark_as_done!
  end

  def delete_task
    # 1. Display the tasks
    display_tasks
    # 2. Tell the view to ask which task to delete
    index = @view.ask_for_index
    # 3. Tell the repository to delete that task
    @repository.destroy(index)
  end

  private

  def display_tasks
    # 1. Ask the repository to give us all the tasks
    tasks = @repository.all
    # 2. Tell the view to display the tasks
    @view.display_tasks(tasks)
  end
end