class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    json_response(@users)
  end

  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  def show
    json_response(@user)
  end

  def update
    @user.update(user_params)
    json_response(@user)
  end

  def destroy
    @user.destory
    head :no_content
  end

  private

  def user_params
    params.permit(:uid, :name, :flat_id)
  end

  def set_user
    @user = User.find(params[:uid])
  end

end
