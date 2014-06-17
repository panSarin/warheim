class CreaturesController < ApplicationController
  def index
    render json: Creature.all
  end

  def show
    render json: Creature.find(params[:id])
  end
end
