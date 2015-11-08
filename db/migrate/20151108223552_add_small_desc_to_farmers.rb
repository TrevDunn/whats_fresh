class AddSmallDescToFarmers < ActiveRecord::Migration
  def change
	  add_column :farmers, :small_desc, :string
  end
end
