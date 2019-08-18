class TodoItemsController < ApplicationController
  before_action :set_todo_items, only: [:index, :create, :destroy]

  def index
    json_response(@todo_items)
  end

  def create
    @todo_item = @todo_items.create(todo_item_params)
    @todo_item.save
    json_response(@todo_item)
  end

  def destroy
    @todo_item = @todo_items.find(params[:id])
    @todo_item.destroy
    json_response(@todo_item.destroyed?)
  end

  private

  def todo_item_params
    params.permit(:id, :content, :due_date)
  end

  def set_todo_items
    @todo_items = User.find_by_uid(params[:user_uid]).flat.todo.todo_items
  end

  def set_todo_item
    @todo_items = User.find_by_uid(params[:user_uid]).flat.todo.todo_items.find
  end


end
  