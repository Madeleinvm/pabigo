class ReflectionsController < ApplicationController

  def index
    @reflections = Reflection.all
  end
 
end