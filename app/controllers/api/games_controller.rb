class Api::GamesController < ApplicationController

  def create
    @game = Game.new(
      score: params[:score]
    )
    if @game.save
      render "show.json.jb"
    else
      render json: {errors:@game.errors.full_messages}, status: :unprocessable_entity
    end
  end

end