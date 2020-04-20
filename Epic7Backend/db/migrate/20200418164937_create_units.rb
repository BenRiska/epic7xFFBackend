class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :name
      t.string :role
      t.string :element
      t.string :sprite
      t.string :headshot

      t.timestamps
    end
  end
end
