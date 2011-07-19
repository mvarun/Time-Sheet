class CategoriesController < ApplicationController
  before_filter :login_required
  def index
    @categories=Category.find(:all)
  end

  def new
    @category=Category.new
  end

  def create
    @category=Category.new(params[:category])
if @category.save
  flash[:notice]="category saved"
  redirect_to categories_path
else
  flash[:error]="category not saved"
  render :action =>'new'
  end
  end

  def edit
     @category=Category.find(params[:id])
  end

  def show
    @category=Category.find(params[:id])
  end

  def update
    @category=Category.find(params[:id])
  if @category.update_attributes(params[:category])
    flash[:notice]="category updated"
    redirect_to categories_path
  else
    flash[:error]="category not updated"
    render :action=>'new'
  end
  end

  def destroy
    @category=Category.find(params[:id])
  if @category.destroy
    flash[:notice]="category deleted"
    redirect_to categories_path
  else
    flash[:error]="category not deleted"
    render :action=>'index'
  end
  end

end
