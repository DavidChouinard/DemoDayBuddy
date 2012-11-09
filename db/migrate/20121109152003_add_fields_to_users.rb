class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :token, :string
    add_column :users, :angellist_url, :string
    add_column :users, :twitter_url, :string
    add_column :users, :linkedin_url, :string
    add_column :users, :avatar, :string
  end
end
