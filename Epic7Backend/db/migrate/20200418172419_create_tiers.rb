class CreateTiers < ActiveRecord::Migration[6.0]
  def change
    create_table :tiers do |t|
      t.references :boss, null: false, foreign_key: true
      t.references :unit, null: false, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
