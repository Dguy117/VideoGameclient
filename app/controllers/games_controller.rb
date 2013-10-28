# This file is app/controllers/games_controller.rb
class GamesController < ApplicationController
  def index
    @games = game.all
    end
  end
