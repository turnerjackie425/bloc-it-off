class TodoItemsController < ApplicationController
  def create
    @todo_item - TodoItem.new(set_todo_item_params)
    redirect_to @todo_list
  end

  private

  def set_todo_item_params
     @todo_item = TodoItem.find(params[:id])
  end

end
