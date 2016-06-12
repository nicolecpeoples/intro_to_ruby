class ChangeHouse < ActiveRecord::Migration
  def change
  	rename_column :houses, :character_id, :lord
  end
end
