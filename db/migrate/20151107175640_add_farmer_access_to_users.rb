class AddFarmerAccessToUsers < ActiveRecord::Migration
  def change
    add_column :users, :farmer_access, :boolean, default: false
  end
end
