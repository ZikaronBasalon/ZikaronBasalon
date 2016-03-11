class CommentsController < ApplicationController
	before_filter :load_commentable
  def create
  	@comment = @commentable.comments.new(params[:comment])
    if @comment.save
      render :json => @comment.to_json(:include => :user)
    else
      render :json => { error: "משהו רע קרה :-(. אנא נסה/י שנית" }
    end
  end

private

  def load_commentable
    resource, id = request.path.split('/')[1, 2]
    klass = resource == "hosts" ? Host : Witness
    @commentable = klass.find(id)
  end
end
