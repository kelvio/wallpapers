class CategoryController < ApplicationController
  def index

    @categories = Category.all.order('name')
    respond_to do |format|
      format.xml
    end

  end
end
