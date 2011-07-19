class HomeController < ApplicationController
  def new
  end

  def index
    @posts=Post.find(:all)
    @users=User.find(:all)
  end

end
