class TasksController < ApplicationController
    def index
        @tasks = Task.order(params[:sort])
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
