class HomeController < ApplicationController
  def index
    
    if params[:symbol] == ""
      @nothing = "You didn't enter a symbol"
    elsif 
      if params[:symbol]
        begin
          @stock = StockQuote::Stock.quote(params[:symbol])
        rescue
          @error = "The symbol does not exist"
        end
      end
    end
    
  end
  
  def about
  end
end
