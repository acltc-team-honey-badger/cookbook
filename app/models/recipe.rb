class Recipe < ActiveRecord::Base


  def ingredient_list
    ingredients.split(",")
  end

  def friendly_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

end
