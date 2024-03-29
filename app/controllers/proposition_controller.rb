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
    proposition.save!
    redirect_to offer_proposition_path(offer, proposition)
  rescue ActiveRecord::RecordInvalid => error
    puts error.inspect
    redirect_to offer_proposition_index_path, notice: error.inspect
  end

#findorcreate

  def show
    @proposition = Proposition.find params[:id]
  end
end
