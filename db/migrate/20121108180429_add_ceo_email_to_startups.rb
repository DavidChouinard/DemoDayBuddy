class AddCeoEmailToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :ceo_email, :string
  end
end
