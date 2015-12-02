class MessagesController < ApplicationController
  
  before_action :set_message, only: [:edit, :update, :destroy]
  
  
  def index
        # Messageを全て取得する。
    @messages = Message.all
    @message = Message.new
    
  end

   #ここからバリデーション登録

  def create
      @message = Message.new(message_params)
     if @message.save
      redirect_to root_path , notice: 'メッセージを保存しました'
     else
        # メッセージが保存できなかった時
        @messages = Message.all
        flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'index'
     end 
  end
  
  def destroy
    @message.destroy
    redirect_to root_path, notice: 'メッセージを削除しました'
  end
  
  
  private
  
    def message_params
      params.require(:message).permit(:name, :body)
    end
    
end