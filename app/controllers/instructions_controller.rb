class InstructionsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @instruction = Instruction.new(instruction_params)
    @instruction.recipe = @recipe
    if @instruction.save
      redirect_to recipe_path(@recipe.id)
    else
      render 'recipes/show'
    end
  end

  def destroy
    @instruction = Instruction.find(params[:id])
    @instruction.destroy
    redirect_to recipe_path(@instruction.recipe)
  end

  private

  def instruction_params
    params.require(:instruction).permit(:step, :description, :id)
  end
end
