class AddPhotoToMarkets < ActiveRecord::Migration
  def change
	  add_column :markets, :photo, :string
  end
end
