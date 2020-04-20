class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string :art
      t.string :name
      t.string :description
      t.string :power
      t.integer :multiplier
      t.integer :skill
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
