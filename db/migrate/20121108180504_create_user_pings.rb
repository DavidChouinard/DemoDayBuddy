class CreateUserPings < ActiveRecord::Migration
  def change
    create_table :user_pings do |t|
      t.integer :user_id, :null => false
      t.integer :startup_id, :null => false

      t.timestamps
    end
  end
end
