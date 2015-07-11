class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def create
    @blog = Blog.new(find_params)
    if @blog.save
      redirect_to blogs_show_path(@blog)
    else
      render 'new'
    end
  end

  def save
  end

  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def show
    @blogs = Blog.all
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(find_params)
      redirect_to blogs_show_path(@blog)
    else
      render 'edit'
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
  end

  private

  def find_params
    params.require(:blog).permit(:title, :date)
  end

end
