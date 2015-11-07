class AddUserMatchToFarmers < ActiveRecord::Migration
  def change
    add_column :farmers, :user_match, :string
  end
end
