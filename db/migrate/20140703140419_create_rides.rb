class CreateRides < ActiveRecord::Migration
  create_table :rides do |t|
    t.integer :attraction_id
    t.integer :user_id

    t.timestamps null: false
  end
end
