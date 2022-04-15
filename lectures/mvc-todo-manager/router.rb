class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    puts 'Welcome to our MVC Todo Manager!'

    loop do
      puts '*' * 50
      puts 'What would you like to do?'
      puts '1. List all your tasks'
      puts '2. Add a task'
      puts '3. Mark a task as done'
      puts '4. Delete a task'
      puts '5. Exit'
      puts '-' * 50
      print '> '
      choice = gets.chomp.to_i

      case choice
      when 1 then @controller.list_tasks
      when 2 then @controller.add_task
      when 3 then @controller.mark_task_as_done
      when 4 then @controller.delete_task
      when 5 then break
      else
        puts "Doesn't compute. Please enter a number between 1-4."
      end
    end
  end
end