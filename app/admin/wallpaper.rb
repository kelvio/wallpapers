ActiveAdmin.register Wallpaper do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :name, :description, :category_id, :original_url, :thumb


  form  do |f|

    f.inputs do
      f.input :name
      f.input :description, :as => :text
      f.input :category
      f.input :original_url
      f.input :thumb
    end
    f.actions # Include the default actions

  end

end
