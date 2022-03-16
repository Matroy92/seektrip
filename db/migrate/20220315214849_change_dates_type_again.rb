class ChangeDatesTypeAgain < ActiveRecord::Migration[6.0]
  def change
    change_column :trips, :starting_date, :datetime, precision: 6, null: false
    change_column :trips, :ending_date, :datetime, precision: 6, null: false
  end
end
