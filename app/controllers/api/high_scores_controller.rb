class Api::HighScoresController < ApplicationController
  
  def index
    @high_scores = HighScore.order("score DESC").limit(10)
    render "index.json.jb"
  end

  def create
    @high_score = HighScore.new(
      player: params[:player],
      score: params[:score],
      game_id: params[:game_id]
    )
    if @high_score.save
      render "show.json.jb"
    else
      render json: {errors:@high_score.errors.full_messages}, status: :unprocessable_entity
    end
  end

end