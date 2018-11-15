class UsersController < ApplicationController


  def index
    @users=User.all
  end

  def new
    redirect_to user_path(current_user) if logged_in?


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

    @user = User.find(params[:id])
    @user_view = user_view(@user.id)
    @messages = Message.all
    # @api = Api.new
    @match = @user.match
    @users = User.all
  end

  def edit
    @user =User.find(session[:user_id])
    @categories = Category.all
    @interests = Interest.all
    
  end

  def update
    user_interests = user_params["categories"]["user_interests"]["interest_id"].delete_if{|x| x.length < 1}.map{|x| x.to_i}
    @user = User.find(session[:user_id])
    @user.update(user_params.except("categories"))
    if @user.valid?
      @user.interests=[]
      user_interests.each{|x| @user.interests << Interest.find(x)}
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    User.find(session[:user_id]).destroy
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
