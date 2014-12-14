class Category < ActiveRecord::Base

  belongs_to :application
  has_many :wallpapers

  def to_s
    return "self.name -> #{ self.application.name }"
  end

end
