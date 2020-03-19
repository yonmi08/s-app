class ManagementsController < ApplicationController
  def new
    @management = Managemant.new
  end

  def create
    @management = Management.create(management_params)
    # binding.pry
    @management.save
    redirect_to root_path
  end

  private
  def management_params
    params.require(:management).permit(:id, :"5", :"6", :"7", :"8", :"9", :"10", :"11", :"12", :"13", :"14", :"15", :"16", :"17", :"18", :"19", :"20", :"21", :"22", :"23", :"0")
  end

end