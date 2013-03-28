set :whenever_command, "bundle exec whenever"
set :environment, "development"
set :cron_log, "~/log/cron_log.log"



every 1.minute do
  runner "PredictionMailer.send_todays_emails"
end

