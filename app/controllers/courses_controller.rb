class CoursesController < ApplicationController
before_action :authenticate_user!
  def index
    @user_courses = Course.where(user_id: current_user.id)
  end

  def create
    user_id = current_user.id
    name = params['course']['name']
    daysmask = params['tag_ids'].map(&:to_i).sum
    svc = NewCourseService.new(user_id, name, daysmask)
    @newcourse = svc.new_course
    redirect_to courses_path

  end

  def new
    @course = Course.new
    tag_ids = params[:tag_ids]
  end

  def edit
  end

  def show
    end

  def update
  end

  def destroy
  end
end
