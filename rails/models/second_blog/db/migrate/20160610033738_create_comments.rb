class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :comment_id
      t.string :comment_type

      t.timestamps
    end
  end
end
