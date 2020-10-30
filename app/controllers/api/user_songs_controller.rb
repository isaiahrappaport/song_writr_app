class Api::UserSongsController < ApplicationController
  before_action :authenticate_user
  # TO DO: - 1) ask Peter if i even need a separate model with routes.controller.view for the user's songs
  # or if i can just use the songs model.
  # 2) Add show create update and destroy
  def index
    @songs = current_user.songs
    render "index.json.jb"
  end

  def show
    @song = current_user.songs.find_by(id: params[:id])
    render "show.json.jb"
  end
end
