class CreateFarmers < ActiveRecord::Migration
  def change
    create_table :farmers do |t|
		t.string :name
		t.string :email
		t.string :website
		t.references :market
		t.text :description

		t.timestamps
    end
  end
end
