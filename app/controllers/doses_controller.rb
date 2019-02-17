class DosesController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @dose = Dose.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @dose = Dose.new(dose_params)
    @dose.recipe = @recipe
    if @dose.save
      redirect_to new_recipe_dose_path(@recipe.id)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to new_recipe_dose_path(@dose.recipe)
  end

  private

  def dose_params
    params.require(:dose).permit(:quantity, :ingredient_id, :id)
  end
end
