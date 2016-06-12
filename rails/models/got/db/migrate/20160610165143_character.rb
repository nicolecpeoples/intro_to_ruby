class Character < ActiveRecord::Migration
  def change
	  	create_table :characters do |t|
	  		t.string :name
	  		t.integer :age
	  		t.string :gender
	  		t.boolean :dead
	  		t.references :house, index:true, foreign_key: true
	  		t.timestamps null:false
	  	end
	end
end