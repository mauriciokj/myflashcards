class GamesController < ApplicationController
  before_action :authenticate_user!
  before_filter :load_card, only: [:simple, :multiple, :answer]

  def index
    @cards = current_user.cards.paginate(:page => params[:page], :per_page => per_page).order(:kind_id, :id)
  end

  def simple
    @card.increase_number_of_times_played
  end

  def multiple
    if @card.multiple_choice?
    else
      render partial: 'without_mulptiple_choice'
    end
  end

  def answer
    @answer = params[:answer]
    if @card.valid_answer(@answer)
      @valid_answer = true
      @card.increase_number_of_correct_answers
    else
      @valid_answer = false
      @card.increase_number_of_errors
    end
  end

  def load_card
    @card = current_user.cards.find(params[:id])
  end

end
