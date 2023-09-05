class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    @blog = Blog.new
    @categories = Category.all
  end
  
  def new
    @blog = Blog.new
  end
  
  def show
    @blog = Blog.find(params[:id])
  end
  
  def create
    Blog.create(blog_parameter)
    redirect_to blogs_path
  end
  
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end
  
  def edit
    @blog = Blog.find(params[:id])
    @categories = Category.all
  end
  
  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_parameter)
      redirect_to blog_path
    else
      render 'edit'
    end
  end
  
  private
  
  def blog_parameter
    params.require(:blog).permit(:title, :content, :start_time, :category_id)
  end
end
