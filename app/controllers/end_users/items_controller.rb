class EndUsers::ItemsController < ApplicationController

def top
	@genres = Genre.all
end

def about
end

def new
end

def new_confirm
end


def create
end

def index
	@genres = Genre.all
end



def show
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
	if params[:genre_id]	#genre_idもっていたら
      @genre = Genre.find(params[:genre_id])
    else

    end
end

end
