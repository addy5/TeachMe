class RequestsController < ApplicationController

  def new
    @request = Request.new
    @post = params[:post_id]
  end

  def create
    @request = Request.new(req_params)
    @request.update(post_id: params[:post_id], user_id: session[:user_id])
    if @request.save
    redirect_to "/"
    end
  end

  def edit
  end

  def destroy
  end

private
  def req_params
    params.require(:request).permit(:message)
  end

end
