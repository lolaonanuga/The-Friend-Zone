class UsersController < ApplicationController


  def index
    @user=User.all
  end

  def new
    @user = User.new
    @categories = Category.all
    @interests = Interest.all
  end

  def create
    byebug
    @user=User.create(user_params)
    if @user.valid?
      redirect_to user_path(@user)
    else
      flash[:errors]=@user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    @user=User.find(params[:id])
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    @user.update(user_params)
    if @user.valid?
      redirect_to user_path(@user)
    else
      flash[:errors]=@user.errors.full_messages
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
