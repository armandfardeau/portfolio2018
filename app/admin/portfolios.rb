ActiveAdmin.register Portfolio do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :title, :description, :client, :stack, :date, :duration, :created_at, :updated_at

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :client
    column :stack
    column :date
    column :duration
    column :created_at
    column :updated_at
    actions
  end

  show do |ad|
    attributes_table do
      row :title
      row :picture do
        image_tag(ad.picture.url(:thumb))
      end
      # Will display the image on show object page
    end
  end

  form do |f|
    f.inputs "Upload" do
      f.input :title
      f.input :description, as: :trumbowyg
      f.input :client
      f.input :stack, as: :trumbowyg
      f.input :date
      f.input :duration
      f.input :picture, required: true, as: :file
    end
    f.actions
  end
end
