class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.string :email
      t.string :prediction
      t.datetime :deadline

      t.timestamps
    end
  end
end
