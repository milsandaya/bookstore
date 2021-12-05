ActiveAdmin.register Book do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :isbn, :title, :publisher, :author, :genre, :summary, :pubDate, :price, :status, :image, :category_id

   form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
   end

  #
  # or
  #
  # permit_params do
  #   permitted = [:isbn, :title, :publisher, :author, :genre, :summary, :pubDate, :price, :status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end