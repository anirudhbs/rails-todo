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

  def edit
    @todo = Todo.find(params[:id])
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save # if saving fails or not validated
      redirect_to @todo
    else
      render 'new'
    end
  end

  def update
    @todo = Todo.find(params[:id])

    if @todo.update(todo_params)
      redirect_to @todo
    else
      render 'edit'
    end  
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to todos_path
  end

  private
    def todo_params
      params.require(:todo).permit(:title, :text) # whitelist params
    end
end
