class PodcastsController < ApplicationController

  before_action :ensure_signed_in
  before_action :load_podcast, only: [:show, :edit, :update, :destroy]

  def new
    @podcast = Podcast.new
  end

  def create
    @podcast = Podcast.new(create_params)
    @podcast.user = current_user

    if @podcast.save
      flash["notice"] = 'Podcast has been created!'
      redirect_to podcasts_path(@podcast)
    else
      flash[:error] = @podcast.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
  end

  def update
    if @podcast.update(update_params)
      flash[:notice] = 'Podcast added!'
      redirect_to podcast_path(@podcast)
    else
      flash[:error] = @podcast.errors.full_messages.join(', ')
      render :new
    end
  end

  def index
    # @podcasts = current_user.podcasts
    @podcasts = Podcast.all
  end

  def show
  end

  def destory
    @podcast.destroy

    flash[:notice] = "#{Podcast.title} has been deleted!"
    redirect_to podcast_path
  end


  private

  def create_params
    params.require(:podcast).permit(:title, :company, :description)
  end

  def update_params
    params.require(:podcast).permit(:title, :company, :description, :listened)
  end

  def load_podcast
    @podcast = current_user.podcasts.find(params[:id])
  end
end
