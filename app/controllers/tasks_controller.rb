class TasksController < ApplicationController

  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(check_params)
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(check_params)
    redirect_to tasks_path
  end

  def destroy
    @task.delete
    redirect_to tasks_path
  end

  private

  def check_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
