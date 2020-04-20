class CreateArtefacts < ActiveRecord::Migration[6.0]
  def change
    create_table :artefacts do |t|
      t.string :role
      t.string :name
      t.string :description
      t.string :art

      t.timestamps
    end
  end
end
