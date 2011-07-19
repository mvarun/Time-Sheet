class ReplaysController < ApplicationController
  def index
    @comment=Comment.find(params[:id])
    @replays=@comment.replays
  end

  def new
    @replay=Replay.new
    @replay.comment_id=params[:id]
  end

  def create
     @replay=Replay.new(params[:replay])
   @replay.comment_id=params[:id]
   if @replay.save
     #UserMailer.deliver_email(@comment)
     flash[:notice]="Reply saved"

  #redirect_to comment_path
  else
  flash[:error]="Reply not saved"
  render :action =>'new'
  end
  end

  def show
  end

end
