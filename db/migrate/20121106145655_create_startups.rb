class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name, :null => false
      t.string :logo_path

      t.timestamps
    end
  end
end
