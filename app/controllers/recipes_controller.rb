class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
  end

  def create
    title = params[:title]
    chef = params[:chef]
    image = params[:image]
    recipe = Recipe.create(title: title, chef: chef, image: image)
    flash[:success] = "Recipe Created"
    redirect_to "/recipes/#{recipe.id}"
  end

  def show
    id = params[:id]
    @recipe = Recipe.find_by(id: id)
  end

  def edit
    id = params[:id]
    @recipe = Recipe.find_by(id: id)
  end

  def update
    id = params[:id]
    recipe = Recipe.find_by(id: id)
    
    title = params[:title]
    chef = params[:chef]
    image = params[:image]
    recipe.update(title: title, chef: chef, image: image)
    flash[:notice] = "Recipe Updated"
    redirect_to "/recipes/#{recipe.id}"
  end

  def destroy
    id = params[:id]
    recipe = Recipe.find_by(id: id)
    recipe.destroy
    flash[:warning] = "Recipe Deleted!!!!!"
    redirect_to "/recipes"
  end

end
