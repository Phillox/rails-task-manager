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
    @task = Task.new(params[:task])
    @task.save
  end

  def edit
  end

  def update
    @task.update(params[:task])
  end

  def destroy
    @task.destroy
  end

private

  def find_task
    @task = Task.find(params[:id])
  end

end
