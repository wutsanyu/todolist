class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
    redirect_to tasks_path, notice: "任務尙未建立" if @task == nil 
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: "新增任務成功！"
    else
      render :new
    end
  end

  def edit  
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: "任務更新成功!"
    else
      render :edit
    end
  end

  def destroy
    @task.destroy if @task
    redirect_to tasks_path, notice: "任務已刪除!"
  end

  private
  def task_params
    params.require(:task).permit(:title, :sequence, :tag_list, :status, :start_time, :end_time, :description)
  end

  def find_task
    @task = Task.find_by(id: params[:id])
  end
end
