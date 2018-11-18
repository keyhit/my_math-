class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
  end

  def destroy
  end

  private
  def task_params
    params.require(:task).permit(:condition, :input, :result)
  end
end
