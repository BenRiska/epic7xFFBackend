class CreateArts < ActiveRecord::Migration[6.0]
  def change
    create_table :arts do |t|
      t.string :alt
      t.string :src
      t.string :insta

      t.timestamps
    end
  end
end
