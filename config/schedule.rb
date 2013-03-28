set :whenever_command, "bundle exec whenever"
set :environment, "development"

every 1.day, :at => '11:59 pm' do
  runner "PredictionMailer.send_todays_emails"
end