class BlogsController < ApplicationController

  def index

  end

  def create
    @blog = Blog.create(blog_params)
  end


private

  def blog_params
    params.require(:blog).permit(:picture)
  end


end
