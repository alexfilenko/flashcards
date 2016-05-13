class CardsController < ApplicationController
  def index
   @cards = Card.all
  end

  def show
  	@cards = Cards.find(params[:id])

  def create
  end

  def create
  @cards = Cards.new(carts_params)
 
  if @cards.save
  redirect_to @cards
else
	render 'new'
end
end
 
private
  def cards_params
    params.require(:cards).permit(:title, :text)
  end
end