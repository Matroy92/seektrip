class ChangeDatesType < ActiveRecord::Migration[6.0]
  def change
    change_column :trips, :starting_date, :datetime
    change_column :trips, :ending_date, :datetime
  end
end
