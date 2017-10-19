class BoardsController < ApplicationController
  def show
  end

  def edit
    @course = Course.find(params[:course_id])
    @board = @course.boards.find(params[:id])
  end

  def create
  end

  def update
    @course = Course.find(params[:course_id])
    @board = @course.boards.find(params[:id])
    if @board.update(board_params)
      redirect_to course_path(@course)
    else
      render :edit
    end
  end


  private
    def board_params
      params.require(:board).permit(:name, :embed)
    end
end
