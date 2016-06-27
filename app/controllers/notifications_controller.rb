class NotificationsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def notify
    task = Notification.new
    result = task.notify
    render plain: result.status
  end
end
