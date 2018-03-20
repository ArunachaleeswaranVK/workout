class CreatePractises < ActiveRecord::Migration
  def change
    create_table :practises do |t|
      t.datetime :date
      t.string :exercise
      t.string :mood
      t.string :length

      t.timestamps null: false
    end
  end
end
