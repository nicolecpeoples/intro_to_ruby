class CreateValidations < ActiveRecord::Migration
  def change
    create_table :validations do |t|
      t.string :person_name
      t.string :pet_name
      t.integer :person_age
      t.integer :pet_age

      t.timestamps
    end
  end
end
