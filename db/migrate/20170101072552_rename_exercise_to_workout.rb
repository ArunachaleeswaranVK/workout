class RenameExerciseToWorkout < ActiveRecord::Migration
  def change
    rename_column :practises, :exercise, :workout
  end
end
