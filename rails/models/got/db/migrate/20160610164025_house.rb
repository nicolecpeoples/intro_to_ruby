class House < ActiveRecord::Migration
  def change
  	create_table :houses do |t|
  		t.string :name
  		t.string :kingdom
  		t.references :character, index:true, foreign_key: true
  		t.timestamps null:false
  	end
  end
end
