class AddApplicationToCategory < ActiveRecord::Migration
  def change
    add_reference :categories, :application, index: true
  end
end
