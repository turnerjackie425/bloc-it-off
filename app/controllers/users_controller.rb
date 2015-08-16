class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @todos = @user.todos.visible_to(current_user)
  end
end
