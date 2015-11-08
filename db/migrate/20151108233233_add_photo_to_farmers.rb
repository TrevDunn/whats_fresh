class AddPhotoToFarmers < ActiveRecord::Migration
  def change
	  add_column :farmers, :photo, :string
  end
end
