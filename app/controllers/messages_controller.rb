class MessagesController < ApplicationController
  def new
    @user=User.find(params[:id])
    @message=Message.new()
    @users=User.all
  end

  def create
    @message=Message.create(message_params)
    byebug
    redirect_to show_all_url
  end

  def show
    @user=User.find(params[:id])
    @messages=Message.all
  end

  private
  def message_params
    params.require(:message).permit(:content, :user_id, :receiver_id)
  end

end
