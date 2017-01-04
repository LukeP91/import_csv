class BoardGamesController < ApplicationController

  def index
    @board_games = BoardGame.all
  end

  def show
    @board_game = BoardGame.find(params[:id])
  end

  def import
    BoardGame.import(params[:file])
    redirect_to board_games_path, notice: "New board games were imported"
  end
end
