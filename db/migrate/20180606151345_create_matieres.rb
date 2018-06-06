class CreateMatieres < ActiveRecord::Migration[5.2]
  def change
    create_table :matieres do |t|
      t.string :title

      t.timestamps
    end
  end
end
