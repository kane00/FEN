ActiveAdmin.register Genre do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :genre_name, :genre_status
  #
  # or
  #
  # permit_params do
  #   permitted = [:genre_name, :genre_status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :genre_name, :genre_status

  index do
    selectable_column
    id_column
    column :genre_name
    column :genre_status
    column '商品数' do |genre|
      genre.items.count
    end
    actions
  end

  show do |genre|
    attributes_table(*genre.class.columns.collect { |column| column.name.to_sym })
    panel "商品一覧" do
      table_for genre.items do
        column :item_name
      end
    end
    #active_admin_comments #コメントを残せる
  end

end
