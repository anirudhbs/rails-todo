class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save # if saving fails or not validated
      redirect_to @todo
    else
      render 'new'
    end
  end

  private
    def todo_params
      params.require(:todo).permit(:title, :text) # whitelist params
    end
end
