class TweetsController < ApplicationController
  def index
    @tweets = current_user.tweets.order(created_at: :desc)
  end
  
  def new
  end
  
  def create
  end
end
