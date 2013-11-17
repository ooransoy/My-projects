class CreateGuns < ActiveRecord::Migration
  def change
    create_table :guns do |t|
      t.string :name
      t.boolean :auto
      t.decimal :shots_per_second
      t.boolean :scope
      t.integer :clip_size
      t.string :clip_type
      t.decimal :damage
      t.string :bullet_speed
      t.string :reload_speed
      t.string :bullet_diameter
      t.integer :number_of_barrels
      t.boolean :spread
      t.boolean :healing_bullets
      t.string :explosion_radius
      t.text :extras

      t.timestamps
    end
  end
end
