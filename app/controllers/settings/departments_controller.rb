module Settings
  class DepartmentsController < ApplicationController
    def index
      @departments = Department.all
    end
    def new
      @department = Department.new
    end
    def create
      @department = Department.create(department_params)
      if @department.save
        redirect_to settings_departments_url, notice: "Department saved successfully."
      else
        render :new
      end
    end
    private
    def department_params
      params.require(:department).permit(:name)
    end
  end
end
