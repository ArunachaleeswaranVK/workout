class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :set
      t.integer :rep
      t.references :practise, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
