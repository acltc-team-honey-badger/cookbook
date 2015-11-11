class Recipe < ActiveRecord::Base

  @coolstuff = "neato"

  attr_accessor :coolstuff

  def title_plus_chef
    title + chef + @coolstuff.to_s 
  end

end
