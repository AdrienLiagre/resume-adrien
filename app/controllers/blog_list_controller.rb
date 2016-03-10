class BlogListController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def create
    @blog = Blog.create(blog_params)
  end


private

  def blog_params
    params.require(:blog).permit(:picture)
  end


end
