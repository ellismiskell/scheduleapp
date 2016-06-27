class Assignment < ActiveRecord::Base
  belongs_to :courses
  belongs_to :user

  def self.send_notifs
    a = self.where("date_due between ? and ?", Time.now, Time.now + 12.hours).where(reminder_type: 'homework')
    a.each do |b|
      NotificationMailer.send_reminder_email.deliver_now
    end
    c = self.where("date_due between ? and ?", Time.now, Time.now + 24.hours).where(reminder_type: 'bring')
    c.each do |d|
      NotificationMailer.send_reminder_email.deliver_now
    end
  end
end

# Assignment.send_notifs
