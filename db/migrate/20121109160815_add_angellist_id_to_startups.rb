class AddAngellistIdToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :angellist_id, :integer
  end
end
