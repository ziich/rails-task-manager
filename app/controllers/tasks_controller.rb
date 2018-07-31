class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  # create the action, and the partial file?

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.create(task_params)
    @task.save
    redirect_to tasks_path
  end

  def new
    @task = Task.new
  end

  def show
  end

  def edit
    @task.save
  end

  def update
    @task.update(task_params)
    redirect_to task_path

  end

  def destroy
    @task.destroy
    redirect_to tasks_path

  end

private

def task_params
  params.require(:task).permit(:title, :details, :completed)
end

def set_task
  @task = Task.find(params[:id])
end


end
