class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @ticket.save
      redirect_to tickets_path, notice: "新增任務成功！"
    else
      render :new
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    @task = Task.find_by(id: params[:id])
    if @task.update(task_params)
      redirect_to tasks_path, notice: "任務更新成功"
    else
      render :edit
    end
  end

  def destroy
    @task = Ticket.find_by(id: params[:id])
    @task.destroy if @task
    redirect_to task_path, notice: "任務已刪除"
  end

  private
  def task_params
    params.require(:tasks).permit(:title, :sequence, :status, :start_time, :end_time, :ticket_description)
  end
end
