# This file is app/controllers/games_controller.rb
class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @games = Game.create!(params[:game])
    flash[:notice] = "#{@games.title} was successfully created."
    redirect_to games_path
  end

  def edit
    @games = Game.find params[:id]
  end

  def update
    @games = Game.find params[:id]
    @games.update_attributes!(params[:game])
    flash[:notice] = "#{@games.title} was successfully updated."
    redirect_to games_path(@games)
  end

  def show
    id = params[:id] # retrieve games ID from URI route
    @games = Game.find(id) # look up game by unique ID
    # will render app/views/movies/show.html.haml by default
  end

  def destroy
    @games = Game.find(params[:id])
    @games.destroy
    flash[:notice] = "Game '#{@games.title}' deleted."
    redirect_to games_path
  end

end
