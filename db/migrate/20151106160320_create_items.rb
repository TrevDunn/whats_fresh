class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
		t.string :name
		t.references :farmer
		t.string :in_stock
		t.string :photo
		t.string :description

		t.timestamps
    end
  end
end
