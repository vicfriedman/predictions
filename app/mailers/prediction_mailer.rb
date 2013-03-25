class PredictionMailer < ActionMailer::Base
  default from: "predictions.r.us@gmail.com"

  def welcome_email(prediction)
    @prediction = prediction
    mail(:to => prediction.email, :subject => "Welcome to My Awesome Site")
  end

  def self.send_todays_emails
    todays_predictions = Prediction.where "DATE(deadline) = DATE(?)", Time.now
    todays_predictions.each do |p|
      self.welcome_email(p).deliver
    end
  end


end
