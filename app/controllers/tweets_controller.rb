class TweetsController < ApplicationController
  def index
    @tweets = current_user.tweets.order(created_at: :desc)
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(params.require(:tweet).permit(:message).merge(user: current_user))
    if @tweet.save
      redirect_to action: 'index', notice: 'Tweet created!'
    else
      render :new
    end
  end
end
