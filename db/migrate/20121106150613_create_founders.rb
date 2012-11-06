class CreateFounders < ActiveRecord::Migration
  def change
    create_table :founders do |t|
      t.integer :startup_id, :null => false
      t.string :name, :null => false
      t.string :avatar_path

      t.timestamps
    end
  end
end
