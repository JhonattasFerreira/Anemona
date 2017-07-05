class CommentsController < ApplicationController
    
    def create
        @comment = @postIdActual.comments.build(comments_params)
        if @comment.save
          redirect_to root_url
        else
          render 'static_pages/home'
        end
    end
    
    private

    def comments_params
      params.require(:comment).permit(:content)
    end
end
