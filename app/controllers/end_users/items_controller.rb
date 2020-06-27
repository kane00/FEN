class EndUsers::ItemsController < ApplicationController

before_action :authenticate_end_user!, except: [:top, :about]

def top
	@genres = Genre.all
  @tags = Item.tag_counts_on(:tags).order('count DESC')
  @q = Item.where.not(item_status: 'false').ransack(params[:q])
  @items = Item.where.not(item_status: 'false')
end

def about
end

def new
  @item = Item.new
  @genres = Genre.all
  @units = Unit.all
end

def create
  @item = Item.new(item_params)
  if @item.save
    redirect_to understand_end_users_items_path
  else
    render "new"
  end
    # 確認画面を作る時用
  # if params[:back]
  #     flash[:notice] = '修正ページです'
  #     render :new
  # else @item.save
  #     flash[:notice] = '投稿'
  #     redirect_to understand_end_users_items_path
  # elsif @item.item_status == 'true'
  #     @item.item_status = 'false'
  #     flash[:notice] = '投稿'
  #     redirect_to understand_end_users_items_path
  # else
  #     @genres = Genre.all
  #     @units = Unit.all
  #     flash[:notice] = 'エラーが発生しました。お手数ですがもう一度登録をお願いします。'
  #     render :new
  # end
end

# def new_confirm
#   @item = Item.find(params[:id])
#   if @item.invalid?
#     render :new # <=バリデーションチェックNGなら戻す
#   end
# end

# def create_image
#   @item = Item.new(item_params)
#   @item.save
#   redirect_to new_confirm_end_users_items_path(item.id)
# end


def index
	@genres = Genre.all
  @item = Item.where.not(item_status: 'false')
  @items = @item.order('updated_at DESC').page(params[:page]).per(10)
end


def show
 # if params[:item] == new_confirm
 #    render :new_confirm
 #  else
  @item = Item.find(params[:id])
  @comment = Comment.new
# end
end

def edit
  @item = Item.find(params[:id])

end

def edit_confirm
end

def understand
end

def update
  @item = Item.find(params[:id])
  if params[:vanish]
    @item.item_status = false
    @item.confirm_status = false
    @item.update(item_params)
    flash[:notice] = '削除申請を行いました。'
    redirect_to root_path
  else
    @item.confirm_status = false
    @item.update(item_params)
    flash[:notice] = '編集が完了しました。'
      redirect_to end_users_item_path
  end
end

def destroy
end

def comment_all
end

def search
  #@item = Item.where.not(item_status: 'false')    #item_statusがfalseではない=trueを取り出す
	@genres = Genre.all 	#左のジャンル用
  @tags = Item.tag_counts_on(:tags).order('count DESC')
  # 検索用
  @q = Item.where.not(item_status: 'false').ransack(params[:q])   #item_statusがfalseではない=trueを取り出す
  @item = @q.result(distinct: true)
  @items = @q.result(distinct: true).page(params[:page]).per(10)
  # ジャンル用
   if params[:genre_id]	#genre_idが何か入っているなら
      @genre = Genre.find(params[:genre_id])  #受け取ったgenre_idと同じものをDBから探し、@genreに加える
      @genreitem = @genre.items.where(item_status: 'true')
      @genreitems = @genre.items.where(item_status: 'true').page(params[:page]).per(10)   #@genreで登録されているitem全てを@itemsに代入,そこからitem_statusがtrueの商品を探しだす
    end


end


private

   def item_params
     params.require(:item).permit(:item_name, :image, :maker, :retail_price, :remark, :item_status, :confirm_status, :tag_list, :end_user_id, :genre_id, :unit_id, :nutrients_calorie, :nutrients_protein, :nutrients_lipid, :nutrients_carbohydrate, :nutrients_salt, :nutrients_sodium, :nutrients_potassium, :nutrients_calcium, :nutrients_magnesium, :nutrients_rin, :nutrients_iron, :nutrients_zinc, :nutrients_copper, :nutrients_manganese, :nutrients_lodine, :nutrients_selenium, :nutrients_chromium, :nutrients_molybdenum, :nutrients_vitamin_a, :nutrients_β_carotene, :nutrients_vitamin_d, :nutrients_vitamin_e, :nutrients_vitamin_k, :nutrients_vitamin_b1, :nutrients_vitamin_b2, :nutrients_niacin, :nutrients_vitmain_b6, :nutrients_vitamin_b12, :nutrients_folic_acid, :nutrients_pantothenic_acid, :nutrients_biotin, :nutrients_vitamin_c, :nutrients_saturated_fatty_acid, :nutrients_polyunsaturated_fatty_acid, :nutrients_monounsaturated_fatty_acid, :nutrients_cholesterol, :nutrients_soluble_dietary_fiber, :nutrients_insoluble_dietary_fiber, :nutrients_dietary_fiber)
   end
end
