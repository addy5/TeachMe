class RequestsController < ApplicationController

  def new
    @request = Request.new
    @post = params[:post_id]
  end

  def create
    @request = Request.new(req_params)
    @request.update(post_id: params[:post_id], user_id: session[:user_id])
    if @request.save
      redirect_to "/users/#{session[:user_id]}"
      flash[:newUser] = "Request for: #{@request.post.title} successfully submitted"
    else
      render "/posts/<%=params[:post_id]%>/requests/new"
    end
  end

  def edit
  end

  def destroy
    @request = Request.find(params[:id])
    if @request.destroy
      redirect_to user_path
    end
  end

  def show
    @request = Request.find(params[:id])
  end

private
  def req_params
    params.require(:request).permit(:message)
  end

end
