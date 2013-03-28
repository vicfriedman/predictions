class PredictionMailer < ActionMailer::Base
  default from: "predictions.r.us@gmail.com"

  def prediction_email(prediction)
    @prediction = prediction
    mail(:to => prediction.email.email, :subject => "Here's Your Prediction!")
  end

  def self.send_todays_emails
    todays_predictions = Prediction.where "DATE(deadline) = DATE(?)", Time.now
    todays_predictions.each do |p|
      self.prediction_email(p).deliver
    end
  end
end