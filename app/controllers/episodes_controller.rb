class EpisodesController < ApplicationController
  before_action :find_podcast
  before_action :find_episode, only: [:show]

  def index
  end

  def new
    @episode = @podcast.episodes.new
  end


  def create
    @episode = @podcast.episodes.new episode_params
    if @episode.save
      redirect_to podcast_episode_path(@podcast, @episode)
    else
      render 'new'
    end
  end

  def show

  end

  private

  def episode_params
    params.require(:episode).permit(:title, :description)
  end

  def find_podcast
    @podcast = Podcast.find(params[:podcast_id])
  end

  def find_episode
    @episode = Episode.find(params[:id])
  end
end
