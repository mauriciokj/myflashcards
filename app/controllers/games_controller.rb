class GamesController < ApplicationController
  before_action :authenticate_user!
  before_filter :load_card, only: [:simple, :multiple, :answer]

  def index
    @cards = current_user.cards.paginate(:page => params[:page], :per_page => per_page).order(:id)
  end

  def simple
  end

  def multiple
    if @card.multiple_choice?
    else
      render partial: 'without_mulptiple_choice'
    end
  end

  def answer
    if @card.valid_answer(params[:answer])
      @result = 'correct'
    else
      @result =  'wrong'
    end
  end

  def load_card
    @card = current_user.cards.find(params[:id])
  end

end
