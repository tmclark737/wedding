class CommentsController < ApplicationController


def new
	@comment = Comment.new
end

def create
	@comment = Comment.new(comment_params)
	if  @comment.save
    	redirect_to :controller => "welcome", :action => "index", anchor: 'registry'
  	else
    	render 'new'
  	end
end


private
  def comment_params
    params.require(:comment).permit(:name, :comment)
  end

end