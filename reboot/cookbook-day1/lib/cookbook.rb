require "csv"

class Cookbook
  def initialize(csv_filepath = nil)
    @csv_filepath = csv_filepath
    @recipes = [] # array of instances of Recipe
    load_csv
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    # recipe is an instance of Recipe
    @recipes << recipe
    save_csv
  end

  def remove_recipe(index)
    @recipes.delete_at(index)
    save_csv
  end

  private

  def load_csv
    return unless @csv_filepath

    CSV.foreach(@csv_filepath) do |row|
      # Each row is an array of strings
      # e.g. ["Boeuf bourguignon", "Hearty red wine beef stew"]
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def save_csv
    return unless @csv_filepath

    CSV.open(@csv_filepath, "wb") do |csv|
      @recipes.each do |recipe| # recipe is an instance of Recipe
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
