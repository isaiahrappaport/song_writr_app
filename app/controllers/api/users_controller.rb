class Api::UsersController < ApplicationController
  def index
    @users = "hello"
    render "index.json.jb"
  end
end
