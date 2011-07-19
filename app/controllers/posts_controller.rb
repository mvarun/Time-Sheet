class PostsController < ApplicationController
  before_filter :login_required, :except => [:index, :show]
  def index
   @posts=Post.find(:all)
     #@posts = Post.paginate :page => params[:page], :order => 'created_at DESC'
  end

  def new
    @post=Post.new
  end

  def create
    @post=Post.new(params[:post])
    @post.user_id=current_user.id
if @post.save
  flash[:notice]="Post saved"
  redirect_to posts_path
else
  flash[:error]="Post not saved"
  render :action =>'new'
  end
  end

  def show
   @post=Post.find(params[:id])
   #@comment=Comment.find(params[:id])
  end

  def update
    @post=Post.find(params[:id])
  if @post.update_attributes(params[:post])
    flash[:notice]="Posts updated"
    redirect_to posts_path
  else
    flash[:error]="Posts not updated"
    render :action=>'new'
  end
  end

  def destroy
     @post=Post.find(params[:id])
  if @post.destroy
    flash[:notice]="Post deleted"
    redirect_to posts_path
  else
    flash[:error]="Post not deleted"
    render :action=>'index'
  end
  end

  def edit
    @post=Post.find(params[:id])
  end
  def upload
    uploaded_io = params[:post][:picture]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file| file.write(uploaded_io.read)
     end
    end

end
