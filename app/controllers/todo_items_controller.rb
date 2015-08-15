class TodoItemsController < ApplicationController
  before action :set_todo_list

  def create
    @todo_list = todo_list.todo_item.create(todo_item_params)
    redirect_to @todo_list
  end
