class AssignmentsController < ApplicationController
  def index
    @user_assignments = Assignment.where(user_id: current_user.id)
  end

  def create
    course_id = params['Course']
    content = params['assignment']['content']
    date_due = params['assignment']['date_due']
    reminder_type = params['reminder_type']
    user_id = current_user.id
    svc = NewAssignmentService.new(course_id, content, date_due, reminder_type, user_id)
    @newassignment = svc.new_assignment
    redirect_to assignments_path
  end

  def new
    @assignment = Assignment.new
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
