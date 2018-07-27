class TodosController < ApplicationController
  def new
  end

  def create
    @todo = Todo.new(params[:todo])
    @todo.save
    redirect_to @todo
  end
end
