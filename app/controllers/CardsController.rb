class CardsController < ApplicationController
  def index
  	@cards = Cards.find(1)
  end
end