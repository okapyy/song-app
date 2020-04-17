class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.build(video_id: params[:video_id])
    favorite.save!
    redirect_to("/videos/#{params[:video_id]}")
  end

  def destroy
    current_user.favorites.find_by(video_id: params[:video_id]).destroy!
    redirect_to("/videos/#{params[:video_id]}")
  end

end
