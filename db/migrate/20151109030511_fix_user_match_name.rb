class FixUserMatchName < ActiveRecord::Migration
  def change
	  rename_column :farmers, :user_match, :user_id
  end
end
