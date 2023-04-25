class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.includes(:user).where(public: true).references(:user)
  end
end