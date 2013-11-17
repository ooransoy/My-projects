class CreateZombies < ActiveRecord::Migration
  def change
    create_table :zombies do |t|
      t.string :name
      t.text :bio
      t.integer :age

      t.timestamps
    end
  end
end
