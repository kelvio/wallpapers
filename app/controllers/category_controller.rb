class CategoryController < ApplicationController

  def index

    @categories = Category.where('application_id = ?', params[:application_id]).order(:name)
    @include_wallpapers = false
    if params[:include_wallpapers] == 'true'
      @include_wallpapers = true
    end
    expires_in 3.days, :public => true
    respond_to do |format|
      format.xml
    end
  end

end
