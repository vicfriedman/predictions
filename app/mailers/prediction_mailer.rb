class PredictionMailer < ActionMailer::Base
  default from: "predictions.r.us@gmail.com"

  def welcome_email(prediction)
    @prediction = prediction
    mail(:to => prediction.email, :subject => "Welcome to My Awesome Site")
  end


end
