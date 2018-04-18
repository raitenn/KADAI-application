class PostsController < ApplicationController
	def new
		@post = Post.new

		@posts = Post.all

	end
	def create
	    # ストロングパラメーターを使用
	     post = Post.new(post_params)
	    # DBへ保存する
	     if post.save
	    # トップ画面へリダイレクト

	    redirect_to post_path(post.id)
	    flash[:notice] = "Book was successfully created."
	end


	end

	def edit
	    @post = Post.find(params[:id])
	end
	def show
		@post = Post.find(params[:id])
	end

	def update
	    post = Post.find(params[:id])
	    if 
	    post.update(post_params)
	    redirect_to post_path(post.id)
	    flash[:notice] = "Book was successfully created."
	end

	end

	 def destroy
        post = Post.find(params[:id])
        if
        post.destroy
        redirect_to new_post_path
        flash[:notice] = "Book was successfully created."
    end
    end




  private
	    def post_params
	        params.require(:post).permit(:title, :body)
	    end
end
