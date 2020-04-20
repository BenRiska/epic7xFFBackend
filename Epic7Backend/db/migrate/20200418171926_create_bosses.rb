class CreateBosses < ActiveRecord::Migration[6.0]
  def change
    create_table :bosses do |t|
      t.string :name
      t.string :element
      t.string :sprite

      t.timestamps
    end
  end
end
