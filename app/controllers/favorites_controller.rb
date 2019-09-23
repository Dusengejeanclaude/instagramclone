class FavoritesController < ApplicationController
	def index
     @favorites=Favorite.all
    end
    def create
       favorite = current_user.favorites.create(post_id: params[:post_id])
       redirect_to posts_url, notice: "#{favorite.post.user.fullname}'s post has been liked"
    end
    def show
      @favorite = current_user.favorites.find_by(post_id: @post.id)
    end
    def destroy
       favorite = current_user.favorites.find_by(id: params[:id]).destroy
       redirect_to posts_url, notice: "#{favorite.post.user.fullname}'s post has been unliked"
    end
end
