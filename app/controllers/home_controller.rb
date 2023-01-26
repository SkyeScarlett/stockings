class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_a853121062e34d0ca1a5c057a2f8165d')
    Rails.logger.info(params[:ticker])
    if params[:ticker] == ""
      @nothing = "You have to enter a symbol"
    elsif params[:ticker]
   @stock = StockQuote::Stock.quote(params[:ticker])
    end
 end

  def about
  end
end
