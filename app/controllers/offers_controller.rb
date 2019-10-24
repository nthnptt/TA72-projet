class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find params[:id]
  end

  def destroy
    offer = Offer.find params[:id]
    offer.destroy
    redirect_to offers_path, notice: 'Offer deleted'
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offers_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offers_path
    else
      render 'new'
    end
  end

  def edit
    @offer = Offer.find params[:id]
  end

  def update
    @offer = Offer.find params[:id]
    if @offer.update offers_params
      redirect_to @offer
    else
      render 'edit'
    end
  end

  def offers_params
    params.require(:offer).permit(:title, :description, :price, images: [])
  end
end
