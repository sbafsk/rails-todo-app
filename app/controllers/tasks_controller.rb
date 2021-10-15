class TasksController < ApplicationController
  def index
     @task = Task.all # ActiveRecord relation <list>
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  private
  # whitelist parameters
  def task_params
    params.require(:task).permit(:title, :detail)
  end
end
