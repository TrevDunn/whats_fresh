class AddDescriptionToMarkets < ActiveRecord::Migration
  def change
    add_column :markets, :description, :text
  end
end
