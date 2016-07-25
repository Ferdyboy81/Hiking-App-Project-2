class ReviewsController < ApplicationController

before_filter :authenticate_user!
before_action :find_post
before_action :find_review, only: [:destroy, :edit, :update, :review_owner]
before_action :review_owner, only: [:destroy, :edit, :update]

def index
  @reviews = Review.all
end


def destroy
  @reviews.destroy
  redirect_to trail_name_path(@trails)
end


def new
  @reviews = Review.new
end

def create
  # <input type="text" name="text"
  @review = @trails.reviews.new({
    text: params[:review][:text]
  })
  @review.user_id = current_user.id
  @review.save

  if @review.save
    redirect_to trail_name_path(@trails)
  else
    render 'new'
  end

end

def update
  if @reviews.update(params[:review].permit(:text))
    redirect_to trail_name_path(@trails)
  else
    render 'edit'
  end
end

private

def find_post
  @trails = Trail.find(params[:trail_id])
end

def find_review
  @reviews = @trails.reviews.find(params[:id])
end

def review_owner
  unless current_user.id == @reviews.user_id
    flash[:notice] = 'Error'
    redirect_to trail_name_path(@trails)
  end
end


end
