class HomeController < ApplicationController
 
 
  def index
    @post2 = Post.all
  end
  
  def write
     @post = Post.new
     @post.title = params[:title]
     @post.content = params[:content]
     @post.save
     redirect_to '/home/index'
  end

end
