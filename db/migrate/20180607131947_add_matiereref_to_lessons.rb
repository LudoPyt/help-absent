class AddMatiererefToLessons < ActiveRecord::Migration[5.2]
  def change
    add_reference :lessons, :matiere, foreign_key: true
  end
end
