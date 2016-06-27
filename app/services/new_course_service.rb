class NewCourseService
  def initialize(user_id, name, daysmask)
    @user_id = user_id
    @name = name
    @daysmask = daysmask
  end

  def new_course
    c = Course.new
    c.user_id = @user_id
    c.name = @name
    c.daysmask = @daysmask
    c.save
  end

end
