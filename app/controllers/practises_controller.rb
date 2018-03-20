class PractisesController < ApplicationController
    
    before_action :set_practise, only: [:show,:edit,:update,:destroy]
    
    def index
        @practises = Practise.all
    end
    
    def show
        
    end    
    
    def new
        @practise = Practise.new
    end   
    
    def create
        @practise = Practise.new(practise_params)
        if @practise.save
            redirect_to root_path
            flash[:notice] = "Practise Successfully Created !"
        else
            render "new"
            flash[:error] = "Practise not Created !"
        end    
    end
    
    def edit
        
    end
    
    def update
        if @practise.update(practise_params)
            redirect_to @practise
            flash[:notice] = "Practise Successfully Updated !"
        else
            render "edit"
            flash[:error] = "Practise not Updated !"
        end    
    end
    
    def destroy
        @practise.destroy
        redirect_to root_path
        flash[:notice] = "Practise Successfully Deleted !"
    end
    
    private
    
    def practise_params
       params.require(:practise).permit(:date, :workout, :mood, :length) 
    end
    
    def set_practise
       @practise = Practise.find(params[:id]) 
    end    
end
