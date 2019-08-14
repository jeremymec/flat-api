class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :update, :destroy]

  def index
    @flats = Flat.all
    json_response(@flats)
  end

  def create
    user = User.find_by_uid(params[:user_uid])
    @flat = user.create_flat(flat_params)
    user.save
    json_response(@flat, :created)
  end

  def show
    json_response(@flat)
  end

  def flat_by_invite
    @flat = Flat.find_by_invite(params[:invite])
    json_response(@flat)
  end

  def update
    @flat.update(flat_params)
    json_response(@flat)
  end

  def destroy
    @flat.destory
    head :no_content
  end

  private

  def flat_params
    params.permit(:name, :invite)
  end

  def set_flat
    @flat = User.find_by_uid(params[:user_uid]).flat
  end

end
