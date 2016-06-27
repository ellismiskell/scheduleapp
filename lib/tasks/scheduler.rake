desc "Sends reminder emails"
task notify: :environment do
  Assignment.send_notifs
  # task.notify
end
