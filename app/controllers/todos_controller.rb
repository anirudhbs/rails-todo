class TodosController < ApplicationController
  def new
  end

  def create
    render plain: params[:todo].inspect
  end
end
