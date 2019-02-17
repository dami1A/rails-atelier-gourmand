class InstructionsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @instruction = Instruction.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @instruction = Instruction.new(instruction_params)
    @instruction.recipe = @recipe
    if @instruction.save
      redirect_to new_recipe_instruction_path(@recipe.id)
    else
      render :new
    end
  end

  def destroy
    @instruction = Instruction.find(params[:id])
    @instruction.destroy
    redirect_to new_recipe_instruction_path(@instruction.recipe)
  end

  private

  def instruction_params
    params.require(:instruction).permit(:step, :description, :id)
  end
end
