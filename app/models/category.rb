class Category < ActiveRecord::Base

  belongs_to :application

  def to_s
    return "self.name -> #{ self.application.name }"
  end

end
