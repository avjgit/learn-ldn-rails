class DashboardController < ApplicationController
  def index
    @tweets = Tweet.limit(50).order(created_at: :desc)
  end
end
