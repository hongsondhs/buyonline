class Admin::UsersController < Admin::BaseController
  load_and_authorize_resource

  def index
  end

  def update
    if @user.update_attributes is_active: !@user.is_active
      flash[:success] = "Cập nhật thành công!"
    else
      flash[:danger] = "Cập nhật thất bại!"
    end
    redirect_back fallback_location: admin_users_path
  end
end
