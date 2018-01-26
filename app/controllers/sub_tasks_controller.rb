class SubTasksController < ApplicationController

    before_action :get_task

    def create
      @sub_task = @task.sub_tasks.create!(sub_task_params)
      redirect_to task_path(@task)

    end

    def edit
      @sub_task = @task.sub_tasks.find(params[:id])
    end

    def update
      @sub_task = @task.sub_tasks.find(params[:id])

      if @sub_task.update(sub_task_params)
        redirect_to task_path(@task)
      else
        render 'Edit'
      end
    end

    def destroy
      @sub_task = @task.sub_tasks.find(params[:id])
      @sub_task.destroy
      redirect_to task_path(@task)
    end

    private
    def get_task
      @task = Task.find(params[:task_id])
    end

    def sub_task_params
      params.require(:sub_task).permit(:summary, :text, :due_date, :important)
    end

end
