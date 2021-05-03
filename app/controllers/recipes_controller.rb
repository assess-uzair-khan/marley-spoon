class RecipesController < ContentfulController
  def index
    @recipes = client.entries(content_type: 'recipe') # Array of Recipes entries in contentful
  end

  def show
    @recipe = client.entry(params[:id]) # fetch recipe details by id from contentful
    render 'recipes/not_found' unless @recipe # show not found page if recipe is not found due to invalid id

    @tags = Recipe.tags @recipe
    @chef = Recipe.chef @recipe
  end
end
