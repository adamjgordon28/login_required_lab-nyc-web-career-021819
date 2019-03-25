class SessionsController < ApplicationController


  def new

  end

  def create
    session[:name] = params[:name]
    if (session[:name] == "") || (session[:name] == nil)
      redirect_to '/login'
    else
      redirect_to '/secrets'
    end
  end

  def destroy
    session.delete :name
  end

end
