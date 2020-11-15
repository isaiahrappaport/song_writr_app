class Api::RhymesController < ApplicationController
  def index
    word = params[:word]
    response =
      HTTP.get("https://rhymebrain.com/talk?function=getRhymes&word=#{[word]}")
    data = response.parse

    @words = data.map { |words| words["word"] }
    render "index.json.jb"
  end
end
