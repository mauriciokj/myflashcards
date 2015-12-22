class GamesController < ApplicationController
  before_action :authenticate_user!
  before_filter :load_card, only: [:simple, :multiple]

  def index
    @cards = current_user.cards.order(:id)
  end

  def simple
  end

  def multiple
    if @card.multiple_choice?
    else
      render partial: 'without_mulptiple_choice'
    end
  end

  def load_card
    @card = current_user.cards.find(params[:id])
  end

end
