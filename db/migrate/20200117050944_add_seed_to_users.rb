class AddSeedToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :seed, :integer
    add_index :users, :seed
  end
end
