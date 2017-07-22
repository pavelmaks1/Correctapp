ActiveAdmin.register Item do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  form html: { multipart: true }  do |f|
    f.inputs  do
      f.input :category_id, as: :select, collection: Category.all
      f.input :title
      f.input :description
      file_field_tag('item_images_url', multiple: true, name: 'item[image]')
    end
    f.button :submit
  end

  controller do
    def permitted_params
      params.require(:item).permit(:category_id, :title, :description, :image)
    end

  end
end

