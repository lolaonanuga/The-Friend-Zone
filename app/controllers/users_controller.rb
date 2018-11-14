class UsersController < ApplicationController


  def index
    @users=User.all
  end

  def new
    @user = User.new

    @categories = Category.all
    @interests = Interest.all
  end

  def create
    user_interests = user_params["categories"]["user_interests"]["interest_id"].delete_if{|x| x.length < 1}.map{|x| x.to_i}
    @user = User.new(user_params.except("categories"))


    if @user.save
        user_interests.each{|x| @user.interests << Interest.find(x)}
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    @user=User.find(params[:id])
    @api=Api.new
    @match=@user.match
    @users = User.all
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
    params.require(:user).permit(
        :username,
        :password,
        :password_confirmation,
        :first_name,
        :last_name,
        :bio,
        :age,
        :categories =>[:user_interests => [:interest_id =>[]]])
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
