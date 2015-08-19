class TodoItemsController < ApplicationController

  def create
    @todo_item = TodoItem.new(set_todo_item_params)
    redirect_to todo_items_path
  end

  def index
    @todo_items = TodoItem.all
  end

  def new
    @todo_item = TodoItem.new
  end

  def edit
  end

  def destroy
    if @todo_item.destroy
       @todo_items = @todo_items.find(params[:id])
       flash[:success] = "To-Do Item item was deleted."
    else
      flash[:error] = "To-Do Item could not be deleted."
    end
    redirect_to @todo_item
  end


  private

 def set_todo_item_params
     params.require(:todo_item).permit(:title, :description)
  end
end
