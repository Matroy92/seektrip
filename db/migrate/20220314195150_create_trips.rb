class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :address
      t.integer :starting_date
      t.integer :ending_date

      t.timestamps
    end
  end
end
