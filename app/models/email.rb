class Email < ActiveRecord::Base
  attr_accessible :email
  has_many :predictions
end
