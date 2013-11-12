# This file is app/controllers/games_controller.rb
class GamesController < ApplicationController
  def index
    @games = Game.all
    end
  def show
    id = params[:id] # retrieve games ID from URI route
    @games = Game.find(id) # look up game by unique ID
    # will render app/views/movies/show.html.haml by default
    end
  end
