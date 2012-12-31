class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :title
      t.integer :user_id
      t.float :distance

      t.timestamps
    end
  end
end
