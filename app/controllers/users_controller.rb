class UsersController < ApplicationController
    
before_action :authenticate_user!

  def dashboard
  end

  def update
      @user = current_user
        if @user.update(current_user_params)
          flash[:notice] = "Guardado..."
        else
          flash[:alert] = "No se ha podido actualizar...."
        end
        redirect_to dashboard_path
  end

  private
  def current_user_params
    params.require(:user).permit(:from, :about,:status,:language, :avatar)
  end  
end
