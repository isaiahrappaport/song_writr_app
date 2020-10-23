class Api::SongsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @songs = Song.all
    render "index.json.jb"
  end

  def show
    @song = Song.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @song = Song.new(
      title: params[:title],
      audio_file: params[:audio_file],
      lyrics: params[:lyrics],
      privacy: params[:privacy],
      user_id: current_user.id,
    )

    if @song.save
      render "show.json.jb"
    else
      render json: { errors: @song.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.title = params[:title] || @song.title
    @song.audio_file = params[:audio_file] || @song.audio_file
    @song.lyrics = params[:lyrics] || @song.lyrics
    @song.privacy = params[:privacy] || @song.privacy

    if @song.save
      render "show.json.jb"
    else
      render json: { errors: @song.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    song = Song.find_by(id: params[:id])
    song.destroy
    render json: { message: "Song successfully deleted!" }
  end
end
