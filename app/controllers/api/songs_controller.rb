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
end
