class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to @todo
  end

  private
    def todo_params
      params.require(:todo).permit(:title, :text) # whitelist params
    end
end
