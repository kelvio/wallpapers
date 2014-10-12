class WallpaperController < ApplicationController

  def index
    @wallpapers = Wallpaper.where('category_id = ?', params[:id]).order('created_at').offset(params[:page]).limit(50)
    respond_to do |format|
      format.xml
    end
  end

end
