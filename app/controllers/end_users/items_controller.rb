class EndUsers::ItemsController < ApplicationController

def top
	@genres = Genre.all
end

def about
end

def new
  @item = Item.new
  @genres = Genre.all
  @units = Unit.all
end

def new_confirm
  @item = Item.new(item_params)
  if @item.invalid?
    render :new # <=バリデーションチェックNGなら戻す
  end
end


def create
  @item = Item.new(item_params)

  if params[:back]
      flash[:notice] = '修正ページです'
      render :new
  # else @item.save
  #     flash[:notice] = '投稿'
  #     redirect_to understand_end_users_items_path
  elsif @item.save
      flash[:notice] = '投稿'
      redirect_to understand_end_users_items_path
  else
      @genres = Genre.all
      @units = Unit.all
      flash[:notice] = 'エラーが発生しました。お手数ですがもう一度登録をお願いします。'
      render :new
  end
end

def index
	@genres = Genre.all
  @items = Item.all
end



def show
 # if params[:item] == new_confirm
 #    render :new_confirm
 #  else
  @item = Item.find(params[:id])
# end

end

def edit
end

def edit_confirm
end

def understand
end

def update
end

def destroy
end

def comment_all
end

def search
	@genres = Genre.all 	#左のジャンル用
	if params[:genre_id]	#genre_idが何か入っているなら
      @genre = Genre.find(params[:genre_id])  #受け取ったgenre_idと同じものをDBから探し、@genreに加える
      @items = @genre.items.all   #@genreで登録されているitem全てを@itemsに代入する
    else    #genre_id空なら
        # flash[:nogenre] = "ジャンルの商品がありません。"
    end
end


private

   def item_params
     params.require(:item).permit(:item_name, :image, :maker, :retail_price, :remark, :item_status, :confirm_status, :tag_list, :end_user_id, :genre_id, :unit_id, :nutrients_calorie, :nutrients_protein, :nutrients_lipid, :nutrients_carbohydrate, :nutrients_salt, :nutrients_sodium, :nutrients_potassium, :nutrients_calcium, :nutrients_magnesium, :nutrients_rin, :nutrients_iron, :nutrients_zinc, :nutrients_copper, :nutrients_manganese, :nutrients_lodine, :nutrients_selenium, :nutrients_chromium, :nutrients_molybdenum, :nutrients_vitamin_a, :nutrients_β_carotene, :nutrients_vitamin_d, :nutrients_vitamin_e, :nutrients_vitamin_k, :nutrients_vitamin_b1, :nutrients_vitamin_b2, :nutrients_niacin, :nutrients_vitmain_b6, :nutrients_vitamin_b12, :nutrients_folic_acid, :nutrients_pantothenic_acid, :nutrients_biotin, :nutrients_vitamin_c, :nutrients_saturated_fatty_acid, :nutrients_polyunsaturated_fatty_acid, :nutrients_monounsaturated_fatty_acid, :nutrients_cholesterol, :nutrients_soluble_dietary_fiber, :nutrients_insoluble_dietary_fiber, :nutrients_dietary_fiber)
   end
end
