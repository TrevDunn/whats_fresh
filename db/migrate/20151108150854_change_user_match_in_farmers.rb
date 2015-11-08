class ChangeUserMatchInFarmers < ActiveRecord::Migration
  def change
	  change_column :farmers, :user_match, 'integer USING CAST(user_match AS integer)'
  end
end
