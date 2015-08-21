class TodoItemsController < ApplicationController

  def create
    @todo_item = TodoItem.new(set_todo_item_params)
    if @todo_item.save
      flash[:success] = "To-Do Item was saved successfully."
    else
      flash[:error] = "To-Do Item could not be deleted."
      return render action: :new
    end
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
    if TodoItem.find(params[:id]).destroy
       flash[:success] = "To-Do Item item was deleted."
    else
      flash[:error] = "To-Do Item could not be deleted."
    end
    redirect_to todo_items_path
  end


  private

 def set_todo_item_params
     params.require(:todo_item).permit(:content, :description)
  end
end
