class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def parameters
    @message = params[:message]
    @second_message = params[:second_message]
  end


end
