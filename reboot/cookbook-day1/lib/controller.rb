require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes
  end

  def create
    # Tell the view to ask for a name and description
    name = @view.ask_for('name')
    description = @view.ask_for('description')
    # Create an instance of Recipe
    recipe = Recipe.new(name, description)
    # Store the recipe in the cookbook
    @cookbook.add_recipe(recipe)
  end

  def destroy
    # Display the recipes
    display_recipes
    # Tell the view to ask for a recipe index
    index = @view.ask_for_index
    # Tell the cookbook to delete the recipe at that index
    @cookbook.remove_recipe(index)
  end

  private

  def display_recipes
    # 1. Get all the recipes from the cookbook
    recipes = @cookbook.all
    # 2. Tell the view to display the recipes
    @view.display(recipes)
  end
end
