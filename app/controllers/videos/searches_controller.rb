class Videos::SearchesController < ApplicationController

  def index
    @videos = Video.search(params[:keyword]).order("created_at DESC").page(params[:page]).per(6)
  end

end
