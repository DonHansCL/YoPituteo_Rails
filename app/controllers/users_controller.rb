class UsersController < ApplicationController
    
before_action :authenticate_user!

  def dashboard
  end

  def show 
    @user = User.find(params[:id])
    @reviews = Review.where(seller_id: params[:id]).order("created_at desc")

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
    params.require(:user).permit(:ciudad, :about,:status,:language,:telefono, :avatar)
  end  
end
