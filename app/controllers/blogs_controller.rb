class BlogsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
      @blog = Blog.new
  end

  def edit
    @blog = Blog.find(params[:id])
    unless current_user == @blog.user 
      redirect_to(@blog, notice: "You cannot edit this blog") and return
    end
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    if @blog.save
      redirect_to @blog, notice: 'Your post was created successfully'
    else
     render :new  
   end
 end

 def update
  @blog = Blog.find(params[:id])


  
 if @blog.update(blog_params)
  redirect_to @blog, notice: 'Your post was updated successfully'
else
  render :edit
end
end

def destroy
  @blog = Blog.find(params[:id])
  unless current_user == @blog.user 
    redirect_to(@blog, notice: "You cannot delete this blog") and return
 end
 @blog.delete
 redirect_to blogs_path, notice: "Your post was deleted"
end

private

def blog_params
  params.require(:blog).permit(:date, :title, :body)
end
end
