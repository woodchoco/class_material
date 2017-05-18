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
  
  def update
      @poongsung = Post.find(params[:Jengwha])
  end

  def update_post
     @one_post = Post.find(params[:post_id])
     @one_post.title = params[:title]
     @one_post.content = params[:content]
     @one_post.save
     redirect_to '/'
  end
  
  def destroy
     @likelion = Post.find(params[:unist])
     @likelion.destroy
     
    ##@AAA = Post.find(params[:id])
    ##@AAA.destroy
     
     redirect_to '/'
  end
  
  

end
