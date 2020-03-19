class GraphsController < ApplicationController
  def index

  end

  def new
    @graph = Graph.new
    @food = Food.new
    @management = Management.new
  end

  def create
    # binding.pry
    @graph = Graph.create(graph_params)

    @graph.save
    redirect_to root_path
  end


  private
  def graph_params
    params.require(:graph).permit(
      management_attributes: [:id, :"5", :"6", :"7", :"8", :"9", :"10", :"11", :"12", :"13", :"14", :"15", :"16", :"17", :"18", :"19", :"20", :"21", :"22", :"23", :"0"],
      food_attributes: [:id, :breakfast, :lunch, :dinner, :snack]
      ).merge(user_id: current_user.id)
  end
end


# //__________________________________________________________________________________________________


# def create
#   @diary = Diary.new(diary_params)
#   @diary.title = "#{@diary.point}点"
#   if @diary.save
#     @diary.url = "/users/#{@diary.user_id}/diaries/#{@diary.id}"
#     @diary.save
#     redirect_to root_path
#   else
#     render :new
#   end
# end
