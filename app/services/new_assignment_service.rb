class NewAssignmentService
  def initialize(course_id, content, date_due, reminder_type, user_id)
    @course_id = course_id
    @content = content
    @date_due = date_due
    @reminder_type = reminder_type
    @user_id = user_id
  end
  def new_assignment
    a = Assignment.new
    a.course_id = @course_id
    a.content = @content
    a.date_due = @date_due
    a.reminder_type = @reminder_type
    a.user_id = @user_id
    a.save
  end
end
