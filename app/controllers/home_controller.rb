class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_a853121062e34d0ca1a5c057a2f8165d')
    Rails.logger.info(params[:ticker])
    if params[:ticker] == ""
      @nothing = "You have to enter a symbol"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
    
    end
    rescue RuntimeError
    @error = 'This stock does not exist. Please try something else'
 end
 end

  def about
  end

