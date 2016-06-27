class NotificationMailer < ApplicationMailer
  def send_reminder_email(name)
      mail(
          to: all_emails,
          from: 'scheduling@scheduleapp.com',
          subject: "do yo shit" 
      )
  end
  # def daily_text
  #     ["Test 1", "Test 2", "Test 3"].sample
  # end
  def all_emails
      User.pluck(:email)
  end
end
