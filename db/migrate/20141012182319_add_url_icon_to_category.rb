class AddUrlIconToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :url_icon, :string
  end
end
