class WelcomeController < ApplicationController
  def index
  end
  def new
      @Welcome = Welcome.new
  end
  def create
      @Welcome = Welcome.new(Welcome_params)
      if @Welcome.save
          rediret_to @Welcome
      else 
          render 'new'
      end
      
  end
  private
  def Welcome_params
      params.require(:Welcome).permit(:title, :content)
  end
end
