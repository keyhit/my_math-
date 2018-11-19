class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # @ass = Counters::Cube.volume(1)
    task = '1.3'
    puts "----| Execution 1 | of task #{task} -----".white.on_black
    edge_cube_length = 2

    @volume = KeyhitPain::Classes::Cube.volume(edge_cube_length)
    @square = KeyhitPain::Classes::Cube.cube_plane_square(edge_cube_length)
  end

  def task_1
    @task = Task.new
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
