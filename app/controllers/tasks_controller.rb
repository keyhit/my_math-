class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # @ass = Counters::Cube.volume(1)
  end

  def task_1
    new
    @task = '1.3'
  end

  def task_1_create
    puts "----| Execution 1 | of task #{@task} -----".white.on_black
    volume = KeyhitPain::Classes::Cube.volume(params_input)
    square = KeyhitPain::Classes::Cube.cube_plane_square(params_input)
    params_results("Volume of cube = #{volume} cubic sm. It's plane square = #{square} square units")
    create
  end

  def task_2
    new
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:tasks).permit(:number_task, :condition, :input, :result)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_path
  end

  def params_input
    params['tasks']['input'].to_i
  end

  def params_results(arg)
    params['tasks']['result'] = arg
  end
end
