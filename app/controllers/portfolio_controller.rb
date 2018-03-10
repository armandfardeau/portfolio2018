class PortfolioController < ApplicationController
  def index
    @portfolios = Portfolio.order(:sponsored, :impression).reverse_order
  end

  def show
    @portfolio = Portfolio.find(params[:id])
    @portfolio.upvote
  end
end
