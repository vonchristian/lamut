module Settings
  class EmployeesController < ApplicationController
    def index
      @employees = User.all
    end 
    def new
      @user = User.new
      # authorize [:bplo_section, :settings, @user]
    end

    def create
      @user = User.create(user_params)
      if @user.save
        redirect_to settings_url, notice: "Employee saved successfully."
      else
        render :new
      end
    end
    def show
      @user = User.find(params[:id])
    end
    def edit
      @user = User.find(params[:id])
    end
    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      if @user.save
        redirect_to settings_url, notice: 'Employee updated successfully.'
      else
        render :edit
      end
    end

    private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :role, :photo, :mobile, :email, :password, :password_confirmation)
    end
  end
end
