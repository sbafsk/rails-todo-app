class TasksController < ApplicationController
  def index
     @task = Task.all # ActiveRecord relation <list>
  end

  def show
    @task = Task.find(params[:id])    
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
      p @task.errors.full_messages
    end 
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def complete
    @task = Task.find(params[:id])
    @task.update_attribute(:completed, params[:completed])
    redirect_back fallback_location: root_path
  end

  private
  # whitelist parameters
  def task_params
    params.require(:task).permit(:title, :detail, :completed)
  end
end
