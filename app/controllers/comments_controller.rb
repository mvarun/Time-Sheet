class CommentsController < ApplicationController
  def index
    @post=Post.find(params[:id])
    @comments=@post.comments
  end

  def new
    #This is very much incorrect	
    @comment=Comment.new
    @comment.post_id=params[:id]
  end
 def create
   @comment=Comment.new(params[:comment])
   @comment.post_id=params[:id]
      if @comment.save
     UserMailer.deliver_email(@comment)
     flash[:notice]="comment saved"
  #redirect_to comments_path(:id =>@comment.post_id)
  else
  flash[:error]="comment not saved"
  render :action =>'new'
  end
  end
 
 def show
   #@comment.post_id=params[:id]
    #  @comments=Comment.find(params[:id])
 end

end
