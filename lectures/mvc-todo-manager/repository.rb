class Repository
  def initialize
    @tasks = [] # array
  end

  def add_task(task)
    @tasks << task # instance of Task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def destroy(index)
    @tasks.delete_at(index)
  end
end