class Api::V1::GamesController < ApplicationController

  def index
    render json: Game.all
  end
  def create
  end
end
