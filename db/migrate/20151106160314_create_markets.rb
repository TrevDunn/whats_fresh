class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
		t.string :name
		t.string :location
		t.string :website
		t.string :hours

		t.timestamps
    end
  end
end
