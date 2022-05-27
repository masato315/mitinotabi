class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tewwt_params)
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end
end
