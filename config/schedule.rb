set :whenever_command, "bundle exec whenever"
set :environment, "development"



every 1.minute do
  runner "PredictionMailer.send_todays_emails"
end
