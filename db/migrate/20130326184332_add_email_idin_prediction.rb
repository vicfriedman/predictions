class AddEmailIdinPrediction < ActiveRecord::Migration
  def change
    remove_column :predictions, :email, :string
    add_column :predictions, :email_id, :integer
  end
end
