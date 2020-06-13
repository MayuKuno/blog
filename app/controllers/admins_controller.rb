class AdminsController < ApplicationController
  def edit
  end

  def update
    if current_user.update(admin_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  private

  def admin_params
    params.require(:admin).permit(:name, :email)
  end
end
