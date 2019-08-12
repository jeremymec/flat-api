class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :update, :destroy]

  def index
    @flats = Flat.all
    json_response(@flats)
  end

  def create
    @flat = Flat.create!(flat_params)
    json_response(@flat, :created)
  end

  def show
    json_response(@flat)
  end

  def update
    @flat.update(flat_params)
    head :no_content
  end

  def destroy
    @flat.destory
    head :no_content
  end

  private

  def flat_params
    params.permit(:name)
  end

  def set_flat
    flat = Flat.find(params[:id])
  end

end
