class TodoItemsController < ApplicationController
  before_action :set_todo_items, only: [:show, :create]

  def show
    json_response(@todo_items)
  end

  def create
    @todo_item = @todo_items.create(todo_item_params)
    @todo_item.save
    json_response(@todo_item)
  end

  private

  def todo_item_params
    params.permit(:content, :due_date)
  end

  def set_todo_items
    @todo_items = User.find_by_uid(params[:user_uid]).flat.todo.todo_items
  end


end
  