class Api::V1::CardsController < Api::V1::ApplicationController
  def index
    cards = Card.all
    render json: cards
  end

  def show
    card = Card.find(params[:id])
    render json: card
  end

  def create
    card = Card.new(card_params)
    if card.save
      render json: card, status: :created
    else
      render json: { errors: card.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    card = Card.find(params[:id])
    if card.update(card_params)
      render json: card
    else
      render json: { errors: card.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    card = Card.find(params[:id])
    card.destroy
    head :no_content
  end

  private

  def card_params
    params.require(:card).permit(:question, :answer)
  end
end
