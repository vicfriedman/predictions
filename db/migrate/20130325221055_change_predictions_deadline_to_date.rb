class ChangePredictionsDeadlineToDate < ActiveRecord::Migration
  def change
    change_column(:predictions, :deadline, :date)
  end
end
