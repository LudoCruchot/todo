class TasksController < ApplicationController
    def index
        @state = params[:state]
        @sort = params[:sort]

        @tasks = Task.all

        @tasks = @tasks.where(state: params[:state]) if params[:state].present?
        @tasks = @tasks.order("#{params[:sort]} asc") if params[:sort].present?
        
        #@tasks = Task.order(params[:sort])

        #if params[:state].nil? == false
        #    @tasks = Task.where(state: "#{@state}").order(params[:sort])
        #end
        
    end

    def show
        @task = Task.find(params[:id])
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.create task_params
        redirect_to task_path(@task)
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        @task.update task_params
        redirect_to task_path(@task)
    end

    def destroy
        Task.find(params[:id]).destroy
        redirect_to root_path
    end

    private
        def task_params
            params.require(:task).permit(:title, :description, :state)
        end
end
