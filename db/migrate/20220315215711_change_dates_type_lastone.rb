class ChangeDatesTypeLastone < ActiveRecord::Migration[6.0]
  def change
    change_column :trips, :starting_date, :date
    change_column :trips, :ending_date, :date
  end
end
