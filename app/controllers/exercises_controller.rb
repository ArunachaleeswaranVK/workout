class ExercisesController < ApplicationController
    def create
        @practise = Practise.find(params[:practise_id])
        @exercise = @practise.exercises.create(params[:exercise].permit(:name,:set,:rep))
        
        redirect_to practise_path(@practise)
    end
    
    def destroy
        @practise = Practise.find(params[:practise_id])
        @exercise = @practise.exercises.find(params[:id])
        @exercise.destroy
        redirect_to @practise
    end    
    
end
