class TodoItemsController < ApplicationController

  def create
    @todo_item = TodoItem.new(set_todo_item_params)
    redirect_to @todo_list
  end

  def destroy
    if @todo_item.destroy
       @todo_items = @todo_list.todo_items.find(params[:id])
       flash[:success] = "To-Do List item was deleted."
    else
      flash[:error] = "To-Do List item could not be deleted."
    end
    redirect_to @todo_list
  end


  private

 def set_todo_item_params
     params.require(:todo_item).permit(:content)
  end
end
