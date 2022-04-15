class View
  def ask_for_title
    puts 'What is the title of your task?'
    print '> '
    gets.chomp
  end

  def display_tasks(tasks)
    puts '=' * 50
    puts 'Here are your tasks:'
    puts '-' * 50
    tasks.each_with_index do |task, idx|
      puts "#{idx + 1}. [#{task.done? ? 'x' : ' '}] #{task.title}"
    end
    puts '=' * 50
  end

  def ask_for_index
    puts 'What is the number of the task?'
    print '> '
    gets.chomp.to_i - 1
  end
end
