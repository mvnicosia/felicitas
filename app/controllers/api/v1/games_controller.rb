class Api::V1::GamesController < ApplicationController

  def index
    render json: Game.all
  end

  def create
    game_type = params[:game_type]
    joinable = params[:joinable]
    new_game = Game.new(game_type: game_type, joinable: joinable)
    new_game.save!
    render json: new_game
  end
end
