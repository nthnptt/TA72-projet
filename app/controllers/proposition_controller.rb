class PropositionController < ApplicationController
  def index
    offer = Offer.find params[:offer_id]
    @propositions = offer.propositions
  end

  def create
    offer = Offer.find params[:offer_id]
    proposition = Proposition.new({
                        user_validation: false,
                        owner_validation: false
                    })
    proposition.offer = offer
    proposition.user = current_user
    if proposition.save
      redirect_to offer_proposition_path(offer, proposition)
    elsif proposition.errors.details[:user_id].include?({error: :taken, value: current_user.id})
      flash[:notice] = "Proposition already exist, you've been redirect to it"
      proposition = Proposition.find_by(user_id: current_user, offer_id: offer.id)
      redirect_to offer_proposition_url(offer, proposition)
    else
      flash[:alert] = proposition.errors.messages
      @propositions = offer.propositions
      render 'index'
    end

  end

  def show
    @proposition = Proposition.find params[:id]
  end
end
