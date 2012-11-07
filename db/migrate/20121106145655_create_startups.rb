class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name, :null => false
      t.text :pitch

      t.string :email, :null => false

      t.time :pitch_time, :null => false
      t.string :ceo_name
      t.string :ceo_avatar_path

      t.timestamps
    end
  end
end
