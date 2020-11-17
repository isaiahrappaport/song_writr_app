class Api::SuggestionsController < ApplicationController
  before_action :authenticate_user, except: [:index]

  def index
    @suggestions = Suggestion.all
    render "index.json.jb"
  end

  def create
    @suggestion = Suggestion.new(
      user_id: current_user.id,
      text: params[:text],
      song_id: params[:song_id],
    )
    if @suggestion.save
      render "show.json.jb"
    else
      render json: { errors: @suggestion.errors.full_messages }, status: 422
    end
  end
end
