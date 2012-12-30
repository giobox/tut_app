class CreateNewsitems < ActiveRecord::Migration
  def change
    create_table :newsitems do |t|
      t.string :title
      t.string :story_body
      t.integer :user_id

      t.timestamps
    end
    add_index :newsitems, [:user_id, :created_at, :title]
  end
end