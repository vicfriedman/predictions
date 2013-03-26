class Prediction < ActiveRecord::Base
  attr_accessible :deadline, :email, :prediction
  belongs_to :email
end
