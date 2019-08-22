class LessonsController < ApplicationController
  skip_after_action :verify_authorized, only: [:new, :show]

  def new
    @lesson = Lesson.new
  end

  def create
    lesson = Lesson.new
    tutorial = Tutorial.find(lesson_params[:tutorial_id])
    lesson.user = current_user
    lesson.tutorial = tutorial
    authorize lesson
    lesson.save
    redirect_to dashboard_path
  end

  private

  def lesson_params
    params.require(:lesson).permit(:user_id, :tutorial_id)
  end
end
