class BlogsController < ApplicationController

  Time.zone = 'Tokyo'
  before_action :move_to_index, except: :index

  def index
    @blogs = Blog.order("id DESC")
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(title:blog_params[:title],text: blog_params[:text],user_id: current_user.id)
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    blog = Blog.find(params[:id])
    if blog.user_id == current_user.id
      blog.update(blog_params)
    end
  end

  def destroy
    blog = Blog.find(params[:id])
    if blog.user_id == current_user.id
      blog.destroy
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:title,:text)
  end

  def move_to_index
      redirect_to action: :index unless user_signed_in?
  end

end
