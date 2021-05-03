class Recipe
  # class method to retrieve recipe tags names
  def self.tags(recipe)
    recipe.tags.map { |t| t.name } rescue [] # some recipes does not have associated tags
  end

  # class method to retrieve name of the chef of recipe
  def self.chef(recipe)
    recipe.try(:chef).try(:name) # some recipes doest not have associated chefs
  end
end
