class Api::UserSongsController < ApplicationController
  before_action :authenticate_user

  def index
    @songs = current_user.songs
    render "index.json.jb"
  end
end
