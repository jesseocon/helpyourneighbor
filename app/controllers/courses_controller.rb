class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @boards = @course.boards.where.not(embed: nil)
  end
end
