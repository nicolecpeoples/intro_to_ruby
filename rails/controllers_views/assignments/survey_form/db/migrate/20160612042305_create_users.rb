class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :comment
      t.references :location, index: true
      t.references :language, index: true

      t.timestamps
    end
  end
end
