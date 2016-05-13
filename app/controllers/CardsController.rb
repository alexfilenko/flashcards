class CardsController < ApplicationController
  def index
   @card = Card.all
  end

  def show
  	@card = Card.find(params[:id])

  def create
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      redirect_to cards_path
    else
      render 'new'
    end
  end
 
private
  def card_params
    params.require(:card).permit(:original_text, :translated_text, :review_date)
  end
end