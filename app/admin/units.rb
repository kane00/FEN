ActiveAdmin.register Unit do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :unit_name, :unit_status
  #
  # or
  #
  # permit_params do
  #   permitted = [:unit_name, :unit_status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :unit_name, :unit_status
  
  index do
    selectable_column
    id_column
    column :unit_name
    column :unit_status
    column '商品数' do |unit|
      unit.items.count
    end
    actions
  end

  show do |unit|
    attributes_table(*unit.class.columns.collect { |column| column.name.to_sym })
    panel "商品一覧" do
      table_for unit.items do
        column :image
        column :item_name
      end
    end
    active_admin_comments
  end

end
