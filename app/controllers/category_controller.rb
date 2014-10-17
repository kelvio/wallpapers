class CategoryController < ApplicationController

  def index
    @categories = Category.where('application_id = ?', params[:application_id]).order('name')
    respond_to do |format|
      format.xml
    end
  end

end
