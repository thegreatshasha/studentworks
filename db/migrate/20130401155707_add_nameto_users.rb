class AddNametoUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, :limit => 30
  end
end