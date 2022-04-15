class View
  def display(recipes)
    puts '*' * 30
    puts "Here are your recipes:"
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
    end
    puts '*' * 30
  end

  def ask_for(thing)
    print "What's the #{thing} of your recipe?\n> "
    gets.chomp
  end

  def ask_for_index
    print "What's the number of your recipe?\n> "
    gets.chomp.to_i - 1
  end
end